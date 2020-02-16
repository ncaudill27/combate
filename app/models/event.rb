class Event < ApplicationRecord
  belongs_to :user
  belongs_to :tournament
  has_and_belongs_to_many :divisions
  accepts_nested_attributes_for :divisions
end
