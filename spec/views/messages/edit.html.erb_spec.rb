require 'spec_helper'

describe "messages/edit" do
  before(:each) do
    @message = assign(:message, stub_model(Message,
      :sms => "MyText",
      :send_id => 1,
      :accept_id => 1,
      :space_id => 1
    ))
  end

  it "renders the edit message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => messages_path(@message), :method => "post" do
      assert_select "textarea#message_sms", :name => "message[sms]"
      assert_select "input#message_send_id", :name => "message[send_id]"
      assert_select "input#message_accept_id", :name => "message[accept_id]"
      assert_select "input#message_space_id", :name => "message[space_id]"
    end
  end
end
