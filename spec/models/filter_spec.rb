require 'spec_helper'

describe Filter do
  
  it "has a valid factory" do
    FactoryGirl.create(:filter).should be_valid
  end
  
end
