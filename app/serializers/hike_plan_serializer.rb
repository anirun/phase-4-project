class HikePlanSerializer < ActiveModel::Serializer
  attributes :id, :date, :user_id, :hike_id
end
