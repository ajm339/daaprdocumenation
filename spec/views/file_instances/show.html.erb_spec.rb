require 'rails_helper'

RSpec.describe "file_instances/show", :type => :view do
  before(:each) do
    @file_instance = assign(:file_instance, FileInstance.create!(
      :file_type => 1,
      :name => "Name",
      :description => "MyText",
      :id => 2,
      :user_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
