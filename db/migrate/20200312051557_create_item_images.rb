class CreateItemImages < ActiveRecord::Migration[5.2]
  def change
    create_table :item_images do |t|
      t.string :item_image, null: false
      # 下二行付け足した
      t.string :src
      t.references :item, foreign_key: true
      t.timestamps
    end
  end
end
