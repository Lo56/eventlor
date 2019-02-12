#creating the User model as requested
class User < ApplicationRecord
  has_many :attendances
  has_many :events, through: :attendances
  
end
