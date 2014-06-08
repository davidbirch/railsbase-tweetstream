module ApplicationHelper
  
  def escaped_tag_link_url(t)
    # return a /hashtag/:name link if a hashtag, else /search/:name
    if is_hashtag(t)
      URI.escape("/hashtag/"+t[0][1..t[0].length])  
    else
      URI.escape("/search?q="+t[0])  
    end 
  end

  private

    def is_hashtag(t)
      t[0][0] == '#'
    end
    
end
