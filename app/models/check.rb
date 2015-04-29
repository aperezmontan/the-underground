class Check < ActiveRecord::Base
  belongs_to :reservation
  has_and_belongs_to_many :items
end
