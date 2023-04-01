class ChangeReminderColumns < ActiveRecord::Migration[7.0]
  def change
    change_table :reminders do |t|
      t.remove :evening
      t.remove :morning
      t.remove :afternoon
      t.boolean :morning, default: false
      t.boolean :afternoon, default: false
      t.boolean :evening, default: false
    end
  end
end
