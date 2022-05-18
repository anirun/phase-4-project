class Hike < ApplicationRecord
    has_many :users
    has_many :hike_plans, through: :users
end
