class MenuitemsController < ApplicationController
  before_action :set_menuitem, only: [:show, :edit, :update, :destroy]

  def index
    @menuitems = Menuitem.all
  end

  def show
  end

  def new
    @menuitem = Menuitem.new
  end

  def create
    @menuitem = Menuitem.new(menuitem_params)
    if @menuitem.save
      redirect_to @menuitem, notice: 'Menu item was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @menuitem.update(menuitem_params)
      redirect_to @menuitem, notice: 'Menu item was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @menuitem.destroy
    redirect_to menuitems_url, notice: 'Menu item was successfully destroyed.'
  end

  private

    def set_menuitem
      @menuitem = Menuitem.find(params[:id])
    end

    def menuitem_params
      params.require(:menuitem).permit(:name, :description, :price, :available)
    end
end
