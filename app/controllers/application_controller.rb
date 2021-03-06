class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :user_signed_in?, :correct_user?
  helper_method :top_ten_tags_by_count
  helper_method :teams
  
  private
  
    def top_ten_tags_by_count
      Tag.uncommon_words.exclude_short_words.group(:name, :slug).order("count_id desc").limit(10).count(:id)
    end
    
    def all_tags_by_count
      Tag.uncommon_words.exclude_short_words.group(:name, :slug).order("count_id desc").count(:id)  
    end
    
    def teams(teams = nil)
      #log = Logger.new(File.expand_path("#{Rails.root}/log/application_helper.log", __FILE__))
      #log.info("#{site_variables.inspect}")
    
      if teams.present?
        teams
      elsif @teams.present?
        @teams
      else
        Team.all
      end  
    end 
    
    def current_user
      begin
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
      rescue Exception => e
        nil
      end
    end

    def user_signed_in?
      return true if current_user
    end

    def correct_user?
      @user = User.find(params[:id])
      unless current_user == @user
        redirect_to root_url, :alert => "Access denied."
      end
    end

    def authenticate_user!
      if !current_user
        redirect_to root_url, :alert => 'You need to sign in for access to this page.'
      end
    end
  
end
