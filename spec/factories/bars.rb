FactoryBot.define do
  factory :bar do
    name "Chinczyk z Hali Mirowskiej"
    address "Some address"
    description "some description is used here"
    rating 5
    user
  end
end