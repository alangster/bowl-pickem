FactoryGirl.define do
  factory :game do
  	title "Big Bowl"
  	location "Los Angeles, CA"
    championship false
    datetime DateTime.now
  end

end
