class Api::V1::RawTweetsController < ApplicationController
  respond_to :json # default to Active Model Serializers
  def index
    respond_with RawTweet.all
  end

  def show
    respond_with RawTweet.find(params[:id])
  end

  
end
