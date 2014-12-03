FactoryGirl.define do
  factory :user do
    admin false
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    sequence(:email) {|n| "user#{n}@test.com"}
    password "whatever"
  end

end
