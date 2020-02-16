class Division < ApplicationRecord
  has_and_belongs_to_many :events
  has_many :users, through: :events
  has_many :tournaments, through: :events

  scope :gi, -> { where(gi: true) }
  scope :nogi, -> { where(gi: false) }
  scope :level, ->(level) { where("skill = ?", level) }

end
