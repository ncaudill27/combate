class Event < ApplicationRecord
  belongs_to :user
  belongs_to :tournament
  belongs_to :division
end
