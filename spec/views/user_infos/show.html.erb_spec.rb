require 'spec_helper'

describe "user_infos/show" do
  before(:each) do
    @user_info = assign(:user_info, stub_model(UserInfo,
      :name => "Name",
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Phone/)
  end
end
