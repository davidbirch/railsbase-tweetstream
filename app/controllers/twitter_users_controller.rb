class TwitterUsersController < ApplicationController
  before_action :set_twitter_user, only: [:show, :edit, :update, :destroy]

  # GET /twitter_users
  def index
    @twitter_users = TwitterUser.all
  end

  # GET /twitter_users/1
  def show
  end

  # GET /twitter_users/new
  def new
    @twitter_user = TwitterUser.new
  end

  # GET /twitter_users/1/edit
  def edit
  end

  # POST /twitter_users
  def create
    @twitter_user = TwitterUser.new(twitter_user_params)

    if @twitter_user.save
      redirect_to @twitter_user, notice: 'Twitter user was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /twitter_users/1
  def update
    if @twitter_user.update(twitter_user_params)
      redirect_to @twitter_user, notice: 'Twitter user was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /twitter_users/1
  def destroy
    @twitter_user.destroy
    redirect_to twitter_users_url, notice: 'Twitter user was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twitter_user
      @twitter_user = TwitterUser.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def twitter_user_params
      params.require(:twitter_user).permit(:name, :screen_name, :user_guid, :profile_background_image_url)
    end
end
