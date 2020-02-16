class Division < ApplicationRecord
  has_and_belongs_to_many :events
  has_many :users, through: :events
  has_many :tournaments, through: :events

  scope :gi, -> { where(style: "Gi") }
  scope :nogi, -> { where(style: "No gi") }
  scope :level, ->(level) { where("skill = ?", level) }
  scope :weight, ->(weight) { where("weight_class = ?", weight) }
  scope :weight_classes, -> { distinct.pluck(:weight_class) }
  scope :gi_or_nogi, -> { distinct.pluck(:gi) }
end
