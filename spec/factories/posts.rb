FactoryBot.define do
  factory :post do
    body { "MyText" }
    forum { nil }
    title { "MyString" }
  end
end
