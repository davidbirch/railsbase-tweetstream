class TweetStreamer
      
  def self.start
    begin
      log = Logger.new(File.expand_path("#{Rails.root}/log/tweet_streamer.log", __FILE__))
      log.info("Tweet streamer started")
      
      # temporary - set this as the companylist
      keyword_list =   Keyword.all.pluck(:keyword_value)
      filter_list =  Filter.all.pluck(:filter_value)
      
      # access the tweet stream
      ts_yaml = YAML.load_file(File.expand_path("../../../config/tweetstream.yml", __FILE__))
      ts_config = ts_yaml[Rails.env]
  
      # Debug purposes only
      #ts_config.each {|key, value|
      #  puts "#{key} = #{value}"
      #} 
      
      # Log in to the tweetstream
      TweetStream.configure do |config|
        config.consumer_key = ts_config["api_key"]
        config.consumer_secret = ts_config["api_secret"]
        config.oauth_token = ts_config["oauth_access_token"]
        config.oauth_token_secret = ts_config["oauth_access_token_secret"]
        config.auth_method = ts_config["auth_method"]
      end
      
      # call the tweetstream client
      #TweetStream::Client.new.track(keyword_list) do |status|
      TweetStream::Client.new.filter(:track=>keyword_list, :filter=>filter_list) do |status|
        create_raw_tweet_from_stream(log,status)
      end
     
    rescue => e
      log.error("#{e.message}")
      log.error("#{e.backtrace}")
    end
  end
  
  private
  
  def self.create_raw_tweet_from_stream(log,status)
    raw = status.to_json
    tweet_guid = status.id
    
    #log.info("Received tweet #{tweet_guid}")
    raw_tweet = RawTweet.new(:raw=>raw, :tweet_guid=>tweet_guid)
    raw_tweet.save    
  end
  
end
