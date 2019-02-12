# creating the Attendance model as requested
class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :event

  references :user, foreign_key: true
  references :event, foreign_key: true
end
