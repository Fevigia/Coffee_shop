class OrderitemsController < ApplicationController
  before_action :set_orderitem, only: [:show, :edit, :update, :destroy]

  def index
    @orderitems = Orderitem.all
  end

  def show
  end

  def new
    @orderitem = Orderitem.new
  end

  def create
    @orderitem = Orderitem.new(orderitem_params)
    if @orderitem.save
      redirect_to @orderitem, notice: 'Order item was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @orderitem.update(orderitem_params)
      redirect_to @orderitem, notice: 'Order item was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @orderitem.destroy
    redirect_to orderitems_url, notice: 'Order item was successfully destroyed.'
  end

  private
    def set_orderitem
      @orderitem = Orderitem.find(params[:id])
    end

    def orderitem_params
      params.require(:orderitem).permit(:menu_item_id, :quantity, :price)
    end
end
