class Item < ApplicationRecord
  mount_uploader :image, ImageUploader
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to :category

  enum condition:[:"新品、未使用", :"未使用に近い",:"目立った傷や汚れなし"]
  enum ship_way:[:"送料込み(出品者負担)", :"着払い(購入者負担)"]
  enum ship_place:[:"未定", :"らくらくメルカリ便", :"ゆうメール", :"レターパック", :"普通郵便(定形、定形外)", :"クロネコヤマト", :"ゆうパック", :"クリックポスト", :"ゆうパケット"]
  enum ship_date:[:"1~2日で発送", :"2~3日で発送", :"4~7日で発送"]
end
