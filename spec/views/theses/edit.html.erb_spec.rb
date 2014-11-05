require 'rails_helper'

RSpec.describe "theses/edit", :type => :view do
  before(:each) do
    @thesis = assign(:thesis, Thesis.create!(
      :name => "MyString",
      :abstract => "MyText",
      :language => "MyString"
    ))
  end

  it "renders the edit thesis form" do
    render

    assert_select "form[action=?][method=?]", thesis_path(@thesis), "post" do

      assert_select "input#thesis_name[name=?]", "thesis[name]"

      assert_select "textarea#thesis_abstract[name=?]", "thesis[abstract]"

      assert_select "input#thesis_language[name=?]", "thesis[language]"
    end
  end
end
