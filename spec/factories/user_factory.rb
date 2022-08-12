FactoryBot.define do
  factory :user do
    name { 'John Doe' }
    email { 'testing@gmail.com' }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
