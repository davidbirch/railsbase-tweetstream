class RawTweetSerializer < ActiveModel::Serializer
  attributes :id, :raw, :tweet_guid
end
