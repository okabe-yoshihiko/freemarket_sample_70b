class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.name
      t.references :user, null: false, foreign_key: true
      t.string :customer_id, null: false
      t.timestamps
    end
  end
end
