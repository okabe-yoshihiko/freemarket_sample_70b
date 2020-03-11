class ChangeDataBirthYearToProfiles < ActiveRecord::Migration[5.2]
  def change
    change_column :profiles, :birth_year, :integer
  end
end
