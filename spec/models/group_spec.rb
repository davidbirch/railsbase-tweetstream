require 'spec_helper'

describe Group do
   
  it "should validate uniquess of name" do
    should validate_uniqueness_of(:name)
  end
  
  it "should validate presence of name" do
    should validate_presence_of(:name)
  end
  
  context "with factories created" do
    
    before :each do
      @group = FactoryGirl.create(:group)
      # on_save of the group creates the category
      @category = Category.find_by(subject_type: "Group", subject_id: @group.id)
    end
    
    context "a normal group" do  
      it " is valid" do
        @group.should be_valid
      end
    end
    
    context "the category record" do  
      it " is valid" do
        @category.should be_valid
        @category.subject_id.should == @group.id
        @category.subject_type.should == "Group"
      end
    end
     
  end
  
end
