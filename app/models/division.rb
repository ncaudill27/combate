class Division < ApplicationRecord
  has_many :events
  has_many :users, through: :events
  has_many :tournaments, through: :events
end
