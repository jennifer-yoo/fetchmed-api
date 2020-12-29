class User < ApplicationRecord
    has_many :orders
    has_many :medications, through: :orders
    has_many :supplies, through: :orders
end
