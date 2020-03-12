class ChangeAaddressesToAddresses < ActiveRecord::Migration[5.2]
  def change
    rename_table :aaddresses, :addresses
  end
end
