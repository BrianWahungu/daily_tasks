class UpdateReminderModel < ActiveRecord::Migration[7.0]
  def change
    remove_column :reminders, :tomorrow, :string
    add_column :reminders, :name, :string, after: :id
  end
end
