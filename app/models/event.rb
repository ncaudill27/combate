class Event < ApplicationRecord
  belongs_to :user
  belongs_to :tournament

  scope :bookmarks, -> (id){ where("registration_status = ?", false).where("user_id = ?", id)}
end
