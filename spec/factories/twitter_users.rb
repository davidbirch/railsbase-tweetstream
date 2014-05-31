# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  
  factory :twitter_user do
    name "John Smith"
    screen_name "JohnSmith123"
    user_guid 196072741
    profile_background_image_url  "http://pbs.twimg.com/profile_images/1521859505/image_normal.jpg"
  end
  
end
