class ItemsController < ApplicationController

  def new
    @item = Item.new
    @parents = Category.all.order("id ASC").limit(13)
  end

  def create
    @item = Item.create(item_params)
    if Item.save
      redirect_to root_path
    else
      render action :new
    end
  end
  
  private

  def item_params
    params.require(:item).permit(:name, :image, :place_id, :description, :category_id, :condition, :price, :ship_date, :ship_place, :ship_way)
  end
end
