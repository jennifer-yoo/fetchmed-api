class User < ApplicationRecord
    has_many :orders
    has_many :medications, through: :orders
    has_many :supplies, through: :orders
    has_secure_password
    
    validates :username, uniqueness: true
end
