class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.boolean :urgent
      t.boolean :can_wait

      t.timestamps
    end
  end
end
