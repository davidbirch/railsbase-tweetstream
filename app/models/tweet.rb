class Tweet < ActiveRecord::Base
  belongs_to :twitter_user
  
  def tweet_text_as_stripped_array
    tweet_text.split(' ').each do |t|
      t.gsub!(/[,.]/,'')
    end 
  end
  
end
