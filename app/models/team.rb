class Team < ActiveRecord::Base
  
  validates :name, presence: true, uniqueness: true
  
  after_create :create_category
  
  private
  
    def create_category
      Category.create(
        subject: self,
        name: self.name
      )
    end
  
end
