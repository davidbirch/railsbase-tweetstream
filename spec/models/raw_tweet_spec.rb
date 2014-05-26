require 'spec_helper'

describe RawTweet do
  
  before :each do
    @raw_tweet = FactoryGirl.create(:raw_tweet)
    # on_save of the raw_tweet creates these two
    @tweet = Tweet.find_by(tweet_guid: @raw_tweet.tweet_guid)
    @twitter_user = @tweet.twitter_user
  end
   
  context "a normal raw_tweet" do  
    it " is valid" do
      @raw_tweet.should be_valid
    end
  end
  
  context "the tweet record" do  
    it " is valid" do
      @tweet.should be_valid
      @tweet.tweet_guid.should == @raw_tweet.tweet_guid
    end
  end
  
  context "the twitter user record" do  
    it " is valid" do
      @twitter_user.should be_valid
      @tweet.twitter_user.should be @twitter_user
    end
  end
end
