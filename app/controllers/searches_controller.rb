class SearchesController < ApplicationController
  
  def show
    @tags = Tag.find_by_name(params[:q])
  end
    
end