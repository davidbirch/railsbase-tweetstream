module ApplicationHelper
  
  def escaped_tag_link_url(t)
    if is_hashtag(t)
      # return a /hashtag/:name route 
      URI.escape("/hashtag/"+t[0][1])  
    else
      # return a /search/:name route
      URI.escape("/search?q="+t[0][1])  
    end 
  end

  private

    def is_hashtag(t)
      t[0][0][0] == '#'
    end
    
end
