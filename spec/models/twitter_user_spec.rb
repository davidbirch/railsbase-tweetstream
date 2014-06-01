require 'spec_helper'

describe TwitterUser do
  
  it "should have many Tweets" do
    should have_many(:tweets)
  end
    
  it "has a valid factory" do
    FactoryGirl.create(:twitter_user).should be_valid
  end
    
end
