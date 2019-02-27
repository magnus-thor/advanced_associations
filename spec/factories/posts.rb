FactoryBot.define do
  factory :post do
    body { "MyText" }
    forum { nil }
    user { nil }
  end
end
