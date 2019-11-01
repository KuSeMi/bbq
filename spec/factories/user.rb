FactoryBot.define do
  factory :user do
    name { "Гусь_#{rand(999)}" }
    sequence(:email) { |n| "someguy_#{n}@example.com" }
    password { "pass123" }
    password_confirmation { "pass123" }
  end
end