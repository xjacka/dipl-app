require 'rails_helper'

RSpec.describe "theses/new", :type => :view do
  before(:each) do
    assign(:thesis, Thesis.new(
      :name => "MyString",
      :abstract => "MyText",
      :language => "MyString"
    ))
  end

  it "renders new thesis form" do
    render

    assert_select "form[action=?][method=?]", theses_path, "post" do

      assert_select "input#thesis_name[name=?]", "thesis[name]"

      assert_select "textarea#thesis_abstract[name=?]", "thesis[abstract]"

      assert_select "input#thesis_language[name=?]", "thesis[language]"
    end
  end
end
