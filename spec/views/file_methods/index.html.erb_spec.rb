require 'rails_helper'

RSpec.describe "file_methods/index", :type => :view do
  before(:each) do
    assign(:file_methods, [
      FileMethod.create!(
        :id => 1,
        :created_by => 2,
        :name => "Name",
        :description => "MyText",
        :input => "MyText",
        :output => "MyText",
        :file_instance => nil
      ),
      FileMethod.create!(
        :id => 1,
        :created_by => 2,
        :name => "Name",
        :description => "MyText",
        :input => "MyText",
        :output => "MyText",
        :file_instance => nil
      )
    ])
  end

  it "renders a list of file_methods" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
