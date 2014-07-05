require 'rails_helper'

RSpec.describe "file_instances/edit", :type => :view do
  before(:each) do
    @file_instance = assign(:file_instance, FileInstance.create!(
      :file_type => 1,
      :name => "MyString",
      :description => "MyText",
      :id => 1,
      :user_id => 1
    ))
  end

  it "renders the edit file_instance form" do
    render

    assert_select "form[action=?][method=?]", file_instance_path(@file_instance), "post" do

      assert_select "input#file_instance_file_type[name=?]", "file_instance[file_type]"

      assert_select "input#file_instance_name[name=?]", "file_instance[name]"

      assert_select "textarea#file_instance_description[name=?]", "file_instance[description]"

      assert_select "input#file_instance_id[name=?]", "file_instance[id]"

      assert_select "input#file_instance_user_id[name=?]", "file_instance[user_id]"
    end
  end
end
