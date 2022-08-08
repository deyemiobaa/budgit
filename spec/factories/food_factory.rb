FactoryBot.define do
  factory :food do
    name { 'Pizza' }
    measurement_unit { 'grams' }
    price { 10 }
    quantity { 100 }
  end
end

FactoryBot.define do
  factory :recipe do
    name { 'Pizza' }
    preparation_time { 10 }
    cooking_time { 10 }
    description { 'Pizza recipe' }
    public { true }
  end
end
