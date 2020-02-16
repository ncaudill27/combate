class User < ApplicationRecord
  has_many :events
  has_many :tournaments, through: :events
  has_many :divisions, through: :events
  
  has_secure_password

  def full_name
    first_name + " " + last_name
  end
end
