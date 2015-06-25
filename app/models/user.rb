class User < ActiveRecord::Base
  has_many :secrets
  has_secure_password
  validates :name, presence: true, uniqueness: true 
end
