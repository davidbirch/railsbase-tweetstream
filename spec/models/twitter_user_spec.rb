require 'spec_helper'

describe TwitterUser do
  
  it "has a valid factory" do
    FactoryGirl.create(:twitter_user).should be_valid
  end
    
end
