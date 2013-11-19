# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :authorization do
    provider "MyString"
    uid "MyString"
    token "MyString"
    secret "MyString"
    user nil
  end
end
