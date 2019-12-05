class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string  :name
      t.string  :image
      t.string  :ship_way
      t.string  :ship_place
      t.string  :ship_date
      t.string :condition
      t.integer :price
      t.integer :place_id, foreign_key: true
      t.integer :bland_id, foreign_key: true
      t.text :description
      t.timestamps
    end
  end
end
