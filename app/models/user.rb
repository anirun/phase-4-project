class User < ApplicationRecord
    has_many :hike_plans, dependent: :destroy
    has_many :hikes, through: :hike_plans
    
    has_secure_password

    validates :username, uniqueness: true, presence: true, length: {in: 4..20}
    validates :email, presence: true, uniqueness: true, format: {with: /\A(?<username>[^@\s]+)@((?<domain_name>[-a-z0-9]+)\.(?<domain>[a-z]{2,}))\z/i}
    validates :password, length: {in: 6..25}

end
