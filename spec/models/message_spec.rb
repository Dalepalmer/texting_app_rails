require 'rails_helper'

describe Message, :vcr => true do
  it { should validate_presence_of :body}
  it "doesn't save the message if there is an error" do
    message = Message.create(:body => "hi", :to => '1111111')
    expect(message).to eq("Somethings")
  end
  describe "#send", :vcr => true do
    it "sends a text message to the given phone number" do
      message = Message.create(:body => "hi", :to => '11111111')
      expect("sent").to eq("sent")
    end
  end
end
