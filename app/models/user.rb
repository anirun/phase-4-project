class User < ApplicationRecord
    has_many :hike_plans
    has_many :hikes, through: :hike_plans
end
