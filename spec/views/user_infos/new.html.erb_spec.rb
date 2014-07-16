require 'spec_helper'

describe "user_infos/new" do
  before(:each) do
    assign(:user_info, stub_model(UserInfo,
      :name => "MyString",
      :phone => "MyString"
    ).as_new_record)
  end

  it "renders new user_info form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_infos_path, :method => "post" do
      assert_select "input#user_info_name", :name => "user_info[name]"
      assert_select "input#user_info_phone", :name => "user_info[phone]"
    end
  end
end
