class Reminder < ApplicationRecord
    # belongs_to :category

    validates_presence_of :name, :start_date, :end_date
  
    attribute :name, :string
    attribute :start_date, :datetime
    attribute :end_date, :datetime
end
