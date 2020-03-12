class ChangeDataTelNumberToAddress < ActiveRecord::Migration[5.2]
  def change
    change_column :addresses, :tel_number, :string
  end
end
