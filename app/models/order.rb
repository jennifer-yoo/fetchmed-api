class Order < ApplicationRecord
    belongs_to :user
    belongs_to :supply, optional: true
    belongs_to :medication, optional: true
end
