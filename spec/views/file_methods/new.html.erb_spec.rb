require 'rails_helper'

RSpec.describe "file_methods/new", :type => :view do
  before(:each) do
    assign(:file_method, FileMethod.new(
      :id => 1,
      :created_by => 1,
      :name => "MyString",
      :description => "MyText",
      :input => "MyText",
      :output => "MyText",
      :file_instance => nil
    ))
  end

  it "renders new file_method form" do
    render

    assert_select "form[action=?][method=?]", file_methods_path, "post" do

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
