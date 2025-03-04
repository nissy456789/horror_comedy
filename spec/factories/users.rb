FactoryBot.define do
  factory :user do
    name {"name1"}
    sequence(:email) { |n| "user_#{n}@example.com" }
    password { "password" }
    password_confirmation { "password" }
  end
end
