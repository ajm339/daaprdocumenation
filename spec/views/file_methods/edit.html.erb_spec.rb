require 'rails_helper'

RSpec.describe "file_methods/edit", :type => :view do
  before(:each) do
    @file_method = assign(:file_method, FileMethod.create!(
      :id => 1,
      :created_by => 1,
      :name => "MyString",
      :description => "MyText",
      :input => "MyText",
      :output => "MyText",
      :file_instance => nil
    ))
  end

  it "renders the edit file_method form" do
    render

    assert_select "form[action=?][method=?]", file_method_path(@file_method), "post" do

      assert_select "input#file_method_id[name=?]", "file_method[id]"

      assert_select "input#file_method_created_by[name=?]", "file_method[created_by]"

      assert_select "input#file_method_name[name=?]", "file_method[name]"

      assert_select "textarea#file_method_description[name=?]", "file_method[description]"

      assert_select "textarea#file_method_input[name=?]", "file_method[input]"

      assert_select "textarea#file_method_output[name=?]", "file_method[output]"

      assert_select "input#file_method_file_instance_id[name=?]", "file_method[file_instance_id]"
    end
  end
end
