class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :detail, null: false
      t.integer :price, null: false
      t.integer :seller_id, null: false
      t.integer :buyer_id
      t.integer :category_id, null: false, foreign_key: true
      t.integer :brand_id, foreign_key: true
      t.integer :size_id, foreign_key: true
      t.integer :item_image_id, foreign_key: true
      t.integer :condition_id, null: false, foreign_key: true
      t.integer :delivery_cities_id, null: false, foreign_key: true
      t.integer :delivery_days_id, null: false, foreign_key: true
      t.integer :delivery_types_id, null: false, foreign_key: true

      # t.bigint :category, null: false, foreign_key: true
      # t.bigint :brand, foreign_key: true
      # t.bigint :size, foreign_key: true
      # t.bigint :condition, null: false, foreign_key: true
      # t.bigint :delivery_cities, null: false, foreign_key: true
      # t.bigint :delivery_days, null: false, foreign_key: true
      # t.bigint :delivery_types, null: false, foreign_key: true
    end
  end
end
