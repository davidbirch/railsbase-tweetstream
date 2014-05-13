# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :raw_tweet do
    raw "MyText"
    tweet_guid 1
  end
end
