require 'rails_helper'

RSpec.describe "theses/index", :type => :view do
  before(:each) do
    assign(:theses, [
      Thesis.create!(
        :name => "Name",
        :abstract => "MyText",
        :language => "Language"
      ),
      Thesis.create!(
        :name => "Name",
        :abstract => "MyText",
        :language => "Language"
      )
    ])
  end

  it "renders a list of theses" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Language".to_s, :count => 2
  end
end
