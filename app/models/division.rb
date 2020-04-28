class Division < ApplicationRecord
  belongs_to :tournament
  has_many :events, through: :tournament
end
