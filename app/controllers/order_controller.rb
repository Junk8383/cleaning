class OrderController < ApplicationController
  before_action :create_params, only: [:confirm]

  def index
  end

  def new
    @order = Order.new
  end

  def confirm
    return if @order.valid?
    render :new
  end

  def back
    render :new
  end

  def create
    if @order.save
      render 'index'
    else
      
      render 'new'
    end
  end

  private

  def create_params
    @order = Order.new(params.require(:order).permit(:tshirt,:shirt,:suit,:sweater,:cardigan,:blouse,:othertops,:pants,:skirt,:onepiece,:address,:receivetime,:tel))
  end

  def create_infomation
  end
end
