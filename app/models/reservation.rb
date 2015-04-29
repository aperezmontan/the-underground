class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  has_many   :checks
end
