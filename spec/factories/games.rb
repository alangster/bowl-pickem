FactoryGirl.define do
  factory :game do
  	sequence(:title) { |n| "Bowl #{n}"}
  	location "Los Angeles, CA"
    championship false
    datetime DateTime.now
  end

end
