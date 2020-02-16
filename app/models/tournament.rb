class Tournament < ApplicationRecord
  has_many :events
  has_many :users, through: :events
  has_many :division, through: :events
end
