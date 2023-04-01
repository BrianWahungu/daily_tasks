class CreateReminders < ActiveRecord::Migration[7.0]
  def change
    create_table :reminders do |t|
      t.string :name
      t.boolean :morning, default: false
      t.boolean :afternoon, default: false
      t.boolean :evening, default: false

      t.timestamps
    end
  end
end
