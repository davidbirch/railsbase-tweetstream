# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :twitter_user do
    name "MyString"
    screen_name "MyString"
    user_guid 1
    profile_background_image_url "MyString"
  end
end
