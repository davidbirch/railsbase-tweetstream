require 'spec_helper'

describe Team do
  
  context "with factories created" do
    
    before :each do
      @team = FactoryGirl.create(:team)
      # on_save of the team creates the category
      @category = Category.find_by(subject_type: "Team", subject_id: @team.id)
    end
    
    context "a normal raw_tweet" do  
      it " is valid" do
        @team.should be_valid
      end
    end
    
    context "the category record" do  
      it " is valid" do
        @category.should be_valid
        @category.subject_id.should == @team.id
        @category.subject_type.should == "Team"
      end
    end
    
   
  end
  
end
