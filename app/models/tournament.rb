class Tournament < ApplicationRecord
  has_many :events
  has_many :users, through: :events
  has_many :divisions, through: :events
end
