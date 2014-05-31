# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  
  factory :tweet do
    tweet_text  "In @AFL teams need leaders. Maybe hardwick should have let Jack sit out for a few weeks. Sitting in corner sulking is best done at home."
    tweet_created_at "2014-05-22 11:39:01"
    tweet_guid 469442303652679681
    tweet_source  "<a href=\"http://twitter.com/download/iphone\" rel=\"nofollow\">Twitter for iPhone</a>"
    twitter_user_id 1
  end
  
end
