# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tweet do
    tweet_text "MyString"
    tweet_created_at "2014-05-22 10:44:18"
    tweet_guid 1
    tweet_source "MyString"
    twitter_user_id 1
  end
end
