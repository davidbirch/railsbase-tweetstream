class Tweet < ActiveRecord::Base
  
  belongs_to :twitter_user
  has_and_belongs_to_many :categories
  
  def tweet_text_as_stripped_array
    tweet_text.split(' ').each do |t|
      t.gsub!(/[,.]/,'')
    end 
  end
  
end
