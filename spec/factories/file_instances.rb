# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :file_instance do
    file_type 1
    name "MyString"
    description "MyText"
    id 1
    user_id 1
  end
end
