class TagSerializer < ActiveModel::Serializer
  attributes :id, :name, :tweet_id
end
