class Order < ApplicationRecord
    belongs_to :recycling_station
    belongs_to :store
    belongs_to :user
    has_many :items
end
