class RenameUserColumnToUserId < ActiveRecord::Migration[5.2]
  def change
    rename_column :addresses, :user, :user_id
    rename_column :profiles, :user, :user_id
  end
end
