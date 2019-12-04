class ItemsController < ApplicationController

  def new
    @item = Item.new
    @parents = Category.all.order("id ASC").limit(13)
    @condition = [["新品","新品"], ["未使用に近い","未使用に近い"], ["目立った傷や汚れなし","目立った傷や汚れなし"], ["やや傷や汚れあり","やや傷や汚れあり"], ["傷や汚れあり","傷や汚れあり"], ["全体的に状態が悪い","全体的に状態が悪い"]]
    @ship_way = [["送料込み(出品者負担)","送料込み(出品者負担)"],["着払い(購入者負担)","着払い(購入者負担)"]]
    @ship_place = [["未定","未定"],["らくらくメルカリ便","らくらくメルカリ便"],["ゆうメール","ゆうメール"],["レターパック","レターパック"],["普通郵便(定型、定形外)","普通郵便(定型、定形外)"], ["クロネコヤマト","クロネコヤマト"], ["ゆうパック","ゆうパック"],["クリックポスト","クリックポスト"], ["ゆうパケット","ゆうパケット"]]
    @ship_date = [["1~2日で発送","1~2日で発送"], ["2~3日で発送","2~3日で発送"], ["4~7日で発送","4~7日で発送"]]
  end

  def create
    @item = Item.create(item_params)
  end
  
  private

  def item_params
    params.require(:item).permit(:name, :image, :place_id, :description, :category_id, :condition, :price, :ship_date, :ship_place, :ship_way)
  end
end
