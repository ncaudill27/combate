class Event < ApplicationRecord
  belongs_to :user
  belongs_to :tournament
  has_many :divisions

  accepts_nested_attributes_for :divisions
  
  validates :user_id, uniqueness: { scope: :tournament_id,
    message: "already added that tournament."}
  
  scope :bookmarked, ->{ where("registration_status = ?", false) }
  scope :registered, ->{ where("registration_status = ?", true) }

  def division_attributes

  end
end