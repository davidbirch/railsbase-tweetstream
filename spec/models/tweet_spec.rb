require 'spec_helper'

describe Tweet do
  
  it "has a valid factory" do
    FactoryGirl.create(:tweet).should be_valid
  end
  
end
