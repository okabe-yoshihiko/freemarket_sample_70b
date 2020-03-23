class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :detail, null: false
      t.integer :price, null: false
      t.integer :seller_id, null: false
      t.integer :buyer_id
      t.integer :category_id, null: false
      t.string  :condition, null: false
      t.string  :size
      t.string  :brand
      t.string  :prefecture_id, null: false
      t.string  :postage_id, null: false
      t.integer :day_id, null: false
      t.timestamps
    end
    add_index :items, :name
  end
end
