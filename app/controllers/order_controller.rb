class OrderController < ApplicationController
  def index
    @order = Order.new
  end

  def new
    @order = Order.new
  end

  def confirm
    @order = Order.new(create_params)
    if @order.valid?
      render :action => 'confirm'
    else
      render :action => 'new'
    end
  end

  def create
    @order = Order.new(create_params)
    if @order.save
      OrderMailer.received_email(@order).deliver
      redirect_to root_path
      flash[:notice] = "申し込みが完了しました。"
    else
      render 'new'
    end
  end

  private

  def create_params
    params.require(:order).permit(:tshirt,:shirt,:suit,:sweater,:cardigan,:blouse,:othertops,:pants,:skirt,:onepiece,:address,:receivetime,:tel)
  end
  
end
