class Tag < ActiveRecord::Base
  
  belongs_to :tweet
  
  validates :name, presence: true

end
