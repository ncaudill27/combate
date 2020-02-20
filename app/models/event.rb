class Event < ApplicationRecord
  belongs_to :user
  belongs_to :tournament
  
  validates :user_id, uniqueness: { scope: :tournament_id }
  
  scope :bookmarked, -> (id){ where("registration_status = ? AND user_id = ?", false, id)}
  scope :registered, -> (id){ where("registration_status = ? AND user_id = ?", true, id)}
end
