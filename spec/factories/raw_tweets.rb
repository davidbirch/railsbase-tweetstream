# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  
  factory :raw_tweet do
    raw "{\"created_at\":\"Tue May 13 12:51:48 +0000 2014\",\"id\":466199128628662273,\"id_str\":\"466199128628662273\",\"text\":\"@rconway92 @KDangerMitchell @Fremantle_FC Hahahaha, gold :)\",\"source\":\"\\u003ca href=\\\"http://twitter.com/download/iphone\\\" rel=\\\"nofollow\\\"\\u003eTwitter for iPhone\\u003c/a\\u003e\",\"truncated\":false,\"in_reply_to_status_id\":466197225471627266,\"in_reply_to_status_id_str\":\"466197225471627266\",\"in_reply_to_user_id\":700970929,\"in_reply_to_user_id_str\":\"700970929\",\"in_reply_to_screen_name\":\"rconway92\",\"user\":{\"id\":198037452,\"id_str\":\"198037452\",\"name\":\"Vanessa Di Cicco\",\"screen_name\":\"ten_apples\",\"location\":\"\",\"url\":null,\"description\":\"Proud Perth-ite. Love me some AFL, plus a little bit of basketball \\u0026 cricket over summer. Go Dockers, Wildcats \\u0026 Scorchers... but mostly go Dockers!\",\"protected\":false,\"followers_count\":351,\"friends_count\":685,\"listed_count\":4,\"created_at\":\"Sun Oct 03 04:53:59 +0000 2010\",\"favourites_count\":8951,\"utc_offset\":28800,\"time_zone\":\"Perth\",\"geo_enabled\":false,\"verified\":false,\"statuses_count\":3128,\"lang\":\"en\",\"contributors_enabled\":false,\"is_translator\":false,\"is_translation_enabled\":false,\"profile_background_color\":\"1A1B1F\",\"profile_background_image_url\":\"http://abs.twimg.com/images/themes/theme9/bg.gif\",\"profile_background_image_url_https\":\"https://abs.twimg.com/images/themes/theme9/bg.gif\",\"profile_background_tile\":false,\"profile_image_url\":\"http://pbs.twimg.com/profile_images/465102100997754880/po1mFkkp_normal.jpeg\",\"profile_image_url_https\":\"https://pbs.twimg.com/profile_images/465102100997754880/po1mFkkp_normal.jpeg\",\"profile_link_color\":\"2FC2EF\",\"profile_sidebar_border_color\":\"181A1E\",\"profile_sidebar_fill_color\":\"252429\",\"profile_text_color\":\"666666\",\"profile_use_background_image\":true,\"default_profile\":false,\"default_profile_image\":false,\"following\":null,\"follow_request_sent\":null,\"notifications\":null},\"geo\":null,\"coordinates\":null,\"place\":null,\"contributors\":null,\"retweet_count\":0,\"favorite_count\":0,\"entities\":{\"hashtags\":[],\"symbols\":[],\"urls\":[],\"user_mentions\":[{\"screen_name\":\"rconway92\",\"name\":\"Ryan Conway\",\"id\":700970929,\"id_str\":\"700970929\",\"indices\":[0,10]},{\"screen_name\":\"KDangerMitchell\",\"name\":\"Kane Mitchell\",\"id\":866208024,\"id_str\":\"866208024\",\"indices\":[11,27]},{\"screen_name\":\"Fremantle_FC\",\"name\":\"Fremantle Dockers\",\"id\":85243046,\"id_str\":\"85243046\",\"indices\":[28,41]}]},\"favorited\":false,\"retweeted\":false,\"lang\":\"nl\"}"
    tweet_guid  466199128628662273
  end
  
end
