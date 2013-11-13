FactoryGirl.define do
  factory :user do
    name "john doe"
    email "email@example.com"
    password "password"
    password_confirmation "password"
  end
end
