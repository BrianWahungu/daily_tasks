class Task < ApplicationRecord
    # belongs_to :user
    belongs_to :category
    # has_and_belongs_to_many :reminders    
end
