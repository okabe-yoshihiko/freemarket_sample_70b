class ChangeColumnToNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :addresses, :tel_number, true
  end
end
