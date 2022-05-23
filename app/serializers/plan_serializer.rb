class PlanSerializer < ActiveModel::Serializer
  include JSONAPI::Serializer
  attributes :id, :date, :user_id, :hike_id
  belongs_to :user, serializer: UserSerializer
  
end
