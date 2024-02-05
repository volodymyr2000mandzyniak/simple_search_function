FactoryBot.define do
  factory :search do
    keyword { "MyString" }
    category { "MyString" }
    min_price { "9.99" }
    max_price { "9.99" }
    isdn { 1 }
  end
end
