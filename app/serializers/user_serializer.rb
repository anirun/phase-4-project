class UserSerializer < ActiveModel::Serializer
  include JSONAPI::Serializer

  attributes :id, :username, :name, :email, :password_digest
  has_many :plans
end
