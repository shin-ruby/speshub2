require 'spec_helper'

describe "user_infos/edit" do
  before(:each) do
    @user_info = assign(:user_info, stub_model(UserInfo,
      :name => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders the edit user_info form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_infos_path(@user_info), :method => "post" do
      assert_select "input#user_info_name", :name => "user_info[name]"
      assert_select "input#user_info_phone", :name => "user_info[phone]"
    end
  end
end
