require 'spec_helper'

describe "spaces/show" do
  before(:each) do
    @space = assign(:space, stub_model(Space,
      :title => "Title",
      :content => "MyText",
      :detailed_choose => "Detailed Choose",
      :price_hour => "9.99",
      :price_day => "9.99",
      :price_month => "9.99",
      :price_year => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/Detailed Choose/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
  end
end
