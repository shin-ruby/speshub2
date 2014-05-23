require 'spec_helper'

describe "spaces/index" do
  before(:each) do
    assign(:spaces, [
      stub_model(Space,
        :title => "Title",
        :content => "MyText",
        :detailed_choose => "Detailed Choose",
        :price_hour => "9.99",
        :price_day => "9.99",
        :price_month => "9.99",
        :price_year => "9.99"
      ),
      stub_model(Space,
        :title => "Title",
        :content => "MyText",
        :detailed_choose => "Detailed Choose",
        :price_hour => "9.99",
        :price_day => "9.99",
        :price_month => "9.99",
        :price_year => "9.99"
      )
    ])
  end

  it "renders a list of spaces" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Detailed Choose".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
