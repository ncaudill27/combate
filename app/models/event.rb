class Event < ApplicationRecord
  belongs_to :user
  belongs_to :tournament
  
  validates :user_id, uniqueness: { scope: :tournament_id }
  
  #TODO take out user_id in place of dot call from user
  scope :bookmarked, ->{ where("registration_status = ?", false)}
  scope :registered, ->{ where("registration_status = ?", true)}
end
