class HashtagsController < ApplicationController
  
  # GET /hashtag/:name
  def show
    @tags = Tag.find_by_name("#"+params[:name])
  end
  
end
