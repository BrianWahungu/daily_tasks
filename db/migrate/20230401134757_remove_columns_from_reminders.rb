class RemoveColumnsFromReminders < ActiveRecord::Migration[7.0]
  def change
    remove_column :reminders, :afternoon, :boolean
    remove_column :reminders, :evening, :boolean
    remove_column :reminders, :morning, :boolean
  end
end
