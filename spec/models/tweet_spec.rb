require 'spec_helper'

describe Tweet do
  
  it "should belong to a Twitter User" do
    should belong_to(:twitter_user)
  end
  
  it "has a valid factory" do
    FactoryGirl.create(:tweet).should be_valid
  end
  
end
