require 'twilio-ruby'
class Message < ActiveRecord::Base
  before_create :send_message
  validates :to, presence: true
  validates :body, presence: true

  # def send
  #   self.send_message
  # end

  private

  def send_message
    begin
      account_sid = ENV['TWILIO_ACCOUNT_SID']
      auth_token = ENV['TWILIO_AUTH_TOKEN']
      @client = Twilio::REST::Client.new account_sid, auth_token
      message = @client.account.messages.create(:body => self.body,
      :to => self.to,
      :from => "+14158141829")
      puts message.to
    rescue Twilio::REST::RequestError => error
      binding.pry
      message = JSON.parse(error.to_json)['message']
      errors.add(:base, message)
      false
    end
  end
end
