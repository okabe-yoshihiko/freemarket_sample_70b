class CreateAaddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :aaddresses do |t|
      t.string :family_name, null: false
      t.string :family_name_kana, null: false
      t.string :first_name, null: false
      t.string :first_name_kana, null: false
      t.integer :tel_number,null: false
      t.integer :zip_cord,null: false
      t.string :city, null: false
      t.string :address, null: false
      t.string :building
      t.integer :user, null: false, foreign_key: true
      t.integer :prefecture,       null: false, default: "0"
      t.timestamps
    end
  end
end
