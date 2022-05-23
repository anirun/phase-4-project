class Hike < ApplicationRecord
    has_many :users
    has_many :plans, through: :users

    validates :name, :location, presence: true
end
