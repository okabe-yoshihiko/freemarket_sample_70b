class RemoveCategoryFromcategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :category
  end
end
