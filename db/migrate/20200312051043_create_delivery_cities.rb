class CreateDeliveryCities < ActiveRecord::Migration[5.2]
  def change
    create_table :delivery_cities do |t|
      t.string :delivery_city, null: false
      t.timestamps
    end
  end
end
