class PagesController < ApplicationController
  
  before_filter :authenticate_user!, :except => [:home]
 
  def home
    @categories = Category.all
  end

  def about
  end
  
  def contact
  end
end
