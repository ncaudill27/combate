class Event < ApplicationRecord
  belongs_to :user
  belongs_to :tournament

  scope :bookmarks, -> (id){ where("registration_status = ? AND user_id = ?", false, id)
end
