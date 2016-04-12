FactoryGirl.define do  
  sequence :preference do |n|
    ['M', 'F', 'Q', 'T'].sample
  end
  sequence :gender do |n|
    ['M', 'F', 'Q', 'T'].sample
  end
  
  # sequence :interest_name_ do |n|
  #   ['Horseback Riding', 'Hiking', 'Coffee', 'Dancing', 'Partying', 'Art', 'Politics', 'Romance', 'Fun', 'Sports', 'Traveling', 'Hop Scotch', 'Food', 'Cuddling', 'Being a Bro', 'Exercise', 'Running', 'Languages', 'Movies', 'Fishing', 'Biking', 'Yoga', 'Family', 'Animals', 'Cooking', 'Smoking', 'Drinking', 'Holding Hands'].sample
  # end

  sequence(:user_id) do |n|
    (1 + Random.rand(4))
  end  

  sequence(:interest_id) do |n|
    (1 + Random.rand(4))
  end  

  sequence(:email) { |n| "test#{n}@email.com" }  

  factory :user do 
    name { Faker::Name.name }
    gender
    dob { Faker::Date.between(100.years.ago, 18.years.ago) }
    preference
    email
    photos { Faker::Placeholdit.image }
    password "password"
  end

  factory :user_interest do
    user_id
    interest_id
  end  

end    

  