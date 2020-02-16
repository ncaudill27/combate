class User < ApplicationRecord
  has_many :events
  has_many :tournaments, through: :events
  has_many :divisions, through: :events
  
  has_secure_password

  def full_name
    first_name + " " + last_name
  end

  def weight_class
    case weight
    when 0..139.9
      "Fly"
    when 140..149.9
      "Feather"
    when 155..169.9
      "Light"
    when 170..184.9
      "Welter"
    when 185..199.9
      "Middle"
    when 200..214.9
      "Heavy"
    when weight > 215
      "Super"
    end
  end
end
