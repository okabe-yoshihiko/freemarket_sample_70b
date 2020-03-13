class CreateDeliveryTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :delivery_types do |t|
      t.string :delivery_type, null: false
      t.timestamps
    end
  end
end
