class TagSummaryController < ApplicationController
  
  # GET /tag_summary/:name
  def show
    @tags = Tag.find_by_name(params[:name])
  end
  
end
