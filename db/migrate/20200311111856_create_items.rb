class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :detail, null: false
      t.integer :price, null: false
      t.integer :seller_id
      t.integer :buyer_id
      t.string :customer_id
      t.timestamps
    end
  end
end
