class TweetSerializer < ActiveModel::Serializer
  attributes :id, :tweet_text, :tweet_created_at, :tweet_guid, :tweet_source, :twitter_user_id
end
