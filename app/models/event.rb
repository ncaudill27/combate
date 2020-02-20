class Event < ApplicationRecord
  belongs_to :user
  belongs_to :tournament
  
  validates :user_id, uniqueness: { scope: :tournament_id }
  
  scope :bookmarks, -> (id){ where("registration_status = ? AND user_id = ?", false, id)}
end
