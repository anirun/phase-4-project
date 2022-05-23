class Plan < ApplicationRecord
    belongs_to :user
    belongs_to :hike

    validates: :date, presence: true

end
