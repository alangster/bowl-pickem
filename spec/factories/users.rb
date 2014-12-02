FactoryGirl.define do
  factory :user do
    admin false
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    email Faker::Internet.email
    password "whatever"
  end

end
