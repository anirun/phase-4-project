class HikeSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :length, :elevation_gain, :dog_friendly
end
