class RawTweet < ActiveRecord::Base
  
  after_save do |raw_tweet|
    convert_to_tweet(raw_tweet)
  end
  
  private

  def convert_to_tweet(raw_tweet)
    
    # decompose the raw_tweet
    tweet_hash = JSON.parse(raw_tweet.raw) # note +was+ getting an error on one record that is not valid JSON ...
    #logger.debug("Hash = #{tweet_hash}")
    
    tweet_guid = tweet_hash["id_str"]
    tweet_text = tweet_hash["text"]
    tweet_original_created_at = Time.parse(tweet_hash["created_at"])
    tweet_source = tweet_hash["source"]
    twitter_user_guid = tweet_hash["user"]["id"]
    twitter_user_name = tweet_hash["user"]["name"]
    twitter_user_screen_name = tweet_hash["user"]["screen_name"]
    twitter_user_profile_image_url = tweet_hash["user"]["profile_image_url"]
    
    # create the TwitterUser
    twitter_user = TwitterUser.find_or_create_by(user_guid: twitter_user_guid) do |u|
      u.name = twitter_user_name
      u.screen_name = twitter_user_screen_name
      u.user_guid = twitter_user_guid
      u.profile_background_image_url = twitter_user_profile_image_url
      u.save
    end
    
    # create the Tweet
    tweet = twitter_user.tweets.find_or_create_by(tweet_guid: tweet_guid) do |t|
      t.tweet_text = tweet_text
      t.tweet_source = tweet_source
      t.tweet_created_at = tweet_original_created_at
      t.tweet_guid = tweet_guid
      t.save
    end
    
    #destroy the raw_tweet
    #raw_tweet.destroy
  end
  
  
end
