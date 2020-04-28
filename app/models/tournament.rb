class Tournament < ApplicationRecord
  has_many :events
  has_many :divisions
  has_many :users, through: :events

  def output_date
    date.strftime('%m/%d/%Y')
  end
end
