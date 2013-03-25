class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :password_hash, :password_salt

  attr_accessor :password, :password_confirmation

  before_validation :encrypt_password


  validates :name, :presence => true
  validates :email, :presence => true
  validates :password_hash, :presence => true
  validates :password_salt, :presence => true
  validates :password, :confirmation => true

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

end
