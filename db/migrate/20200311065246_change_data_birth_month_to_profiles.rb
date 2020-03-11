class ChangeDataBirthMonthToProfiles < ActiveRecord::Migration[5.2]
  def change
    change_column :profiles, :birth_month, :integer
  end
end
