class AddNameDescriptionStartEndDateToReminder < ActiveRecord::Migration[7.0]
  def change
    add_column :reminders, :description, :text
    add_column :reminders, :start_date, :date
    add_column :reminders, :end_date, :date
  end
end
