class UsersController < ApplicationController
  before_action :require_user_logged_in, only: [:show]
  def index
  end

  def new
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id #ここを追加
      flash[:success] = 'ユーザを登録しました。'
      redirect_to @user
    else
      flash.now[:danger] = 'ユーザの登録に失敗しました。'
      render :new
    end
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
