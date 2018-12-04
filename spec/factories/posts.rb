FactoryBot.define do
  factory :post do
    body { "MyText" }
    forum 
    title { "MyString" }
    user
  end
end
