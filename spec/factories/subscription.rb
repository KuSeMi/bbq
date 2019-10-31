FactoryBot.define do
  factory :subscription do
    
    association :user
    association :eventх
    user_name { 'Gus' }
    user_email { 'john@doe.com' }

  end
end
