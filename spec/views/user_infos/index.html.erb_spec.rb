require 'spec_helper'

describe "user_infos/index" do
  before(:each) do
    assign(:user_infos, [
      stub_model(UserInfo,
        :name => "Name",
        :phone => "Phone"
      ),
      stub_model(UserInfo,
        :name => "Name",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of user_infos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
