class User < ActiveRecord::Base
  include BCrypt
  has_many :events, foreign_key: 'organizer_id'
  has_many :reservations
  has_many :attended_events, through: :reservations, source: :event

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(plaintext_password)
    self.password == plaintext_password
  end
end
