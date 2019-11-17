FactoryBot.define do
  factory :event do
    
    association :user
    title { 'BBQ' }
    description { 'Гриль' }
    address { 'Винница, Южный Буг' }
    datetime { DateTime.parse('28.10.2019 09:00') }
    pincode{ '12345' }

  end
end