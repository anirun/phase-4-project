class HikeSerializer < ActiveModel::Serializer
  incude JSONAPI::Serializer
  attributes :id, :name, :location, :length, :elevation_gain, :dog_friendly
end
