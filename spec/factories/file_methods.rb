# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :file_method do
    id 1
    created_by 1
    name "MyString"
    description "MyText"
    input "MyText"
    output "MyText"
    file_instance nil
  end
end
