class Category < ActiveRecord::Base
  
  belongs_to :subject, polymorphic: true
  has_and_belongs_to_many :filters
  has_and_belongs_to_many :keywords
  has_and_belongs_to_many :tweets
  
end
