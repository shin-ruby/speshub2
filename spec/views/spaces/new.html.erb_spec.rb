require 'spec_helper'

describe "spaces/new" do
  before(:each) do
    assign(:space, stub_model(Space,
      :title => "MyString",
      :content => "MyText",
      :detailed_choose => "MyString",
      :price_hour => "9.99",
      :price_day => "9.99",
      :price_month => "9.99",
      :price_year => "9.99"
    ).as_new_record)
  end

  it "renders new space form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => spaces_path, :method => "post" do
      assert_select "input#space_title", :name => "space[title]"
      assert_select "textarea#space_content", :name => "space[content]"
      assert_select "input#space_detailed_choose", :name => "space[detailed_choose]"
      assert_select "input#space_price_hour", :name => "space[price_hour]"
      assert_select "input#space_price_day", :name => "space[price_day]"
      assert_select "input#space_price_month", :name => "space[price_month]"
      assert_select "input#space_price_year", :name => "space[price_year]"
    end
  end
end
