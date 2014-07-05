require 'rails_helper'

RSpec.describe "file_methods/show", :type => :view do
  before(:each) do
    @file_method = assign(:file_method, FileMethod.create!(
      :id => 1,
      :created_by => 2,
      :name => "Name",
      :description => "MyText",
      :input => "MyText",
      :output => "MyText",
      :file_instance => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
