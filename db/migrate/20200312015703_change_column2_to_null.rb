class ChangeColumn2ToNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :profiles, :introduction, true
  end
end
