class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :detail, null: false
      t.integer :price, null: false
      t.integer :seller_id, null: false, foreign_key: true
      t.integer :buyer_id, null: false, foreign_key: true
      t.integer :category_id, null: false, foreign_key: true
      t.integer :brand_id, null: false, foreign_key: true
      t.integer :size_id, null: false, foreign_key: true
      t.integer :item_img_id, null: false,foreign_key: true
      t.integer :condition_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
