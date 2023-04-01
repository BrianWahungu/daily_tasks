class AddNewColumnsToCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :home, :string
    add_column :categories, :school, :string
    add_column :categories, :gym, :string
    add_column :categories, :work, :string
    remove_column :categories, :name
    remove_column :categories, :description
    remove_column :categories, :urgent
    remove_column :categories, :can_wait
  end
end
