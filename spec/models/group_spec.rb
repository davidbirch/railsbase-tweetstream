require 'spec_helper'

describe Group do
  
  it "has a valid factory" do
    FactoryGirl.create(:group).should be_valid
  end
  
end
