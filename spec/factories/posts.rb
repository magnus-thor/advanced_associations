FactoryBot.define do
  factory :post do
    title { 'Title' }
    body { 'MyText' }
    forum
    user
  end
end
