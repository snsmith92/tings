FactoryBot.define do
  factory :user do
    sequence :email do |n|
      "dummyEmail#{n}@gmail.com"
    end
    password "secretPassword"
    password_confirmation "secretPassword"
  end

  factory :ad do
    title "Car for sale"
    cost "3000.00"
    description "I have for sale a very clean great running 2006 Buick Lucerne for sale. 
    This vehicle is in great shape inside and out. All power, tinted windows, 
    and 3800 motor. No issues at all, clean title."
    quantity "1"
    phone "2425350365"
    email "factory@ruby.org"
    accepted true 
    association :user
  end
end