class HashtagsController < ApplicationController
  
  # GET /hashtag/:name
  def show
    @tags = Tag.where("slug = ?", params[:name])

  end
  
end
