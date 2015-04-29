class Event < ActiveRecord::Base
  belongs_to :organizer, class_name: 'User'
  has_many :reservations
end
