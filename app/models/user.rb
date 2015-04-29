class User < ActiveRecord::Base
 has_many :events, foreign_key: 'organizer_id'
end
