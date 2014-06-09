class SearchesController < ApplicationController
  
  # GET /search?q=:q
  def show
    @tags = Tag.where("slug = ?", params[:q])
  end
    
end