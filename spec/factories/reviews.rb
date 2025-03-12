FactoryBot.define do
  factory :review do
    body {"テスト１"}
    association :user
    association :movie
  end
end
