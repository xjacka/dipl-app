require 'rails_helper'

RSpec.describe "theses/show", :type => :view do
  before(:each) do
    @thesis = assign(:thesis, Thesis.create!(
      :name => "Name",
      :abstract => "MyText",
      :language => "Language"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Language/)
  end
end
