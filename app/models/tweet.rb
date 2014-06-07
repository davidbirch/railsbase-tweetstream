class Tweet < ActiveRecord::Base
  
  belongs_to :twitter_user
  has_and_belongs_to_many :categories
  has_many :tags
  
  after_create :generate_tags
  
  def regenerate_tags
    self.tags.destroy
    generate_tags
  end
  
  def generate_tags
    tweet_text_as_stripped_array(self).each do |t|
      tag = self.tags.find_or_create_by(name: t) do |g|
        g.name = t
      end
    end  
  end
  
  def tweet_text_as_stripped_array(tweet)
    tweet.tweet_text.split(' ').each do |t|
      t.gsub!(/[,.]/,'')
    end 
  end
  
end
