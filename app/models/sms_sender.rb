require 'twilio-ruby'

class SMSSender
  def initialize
    @account_sid = ENV["account_sid"]
    @auth_token = ENV["auth_token"]
    @twilio_phone_number = ENV["twilio_phone_number"]
    @recipient_phone_number = ENV["recipient_phone_number"]
    @client = Twilio::REST::Client.new @account_sid, @auth_token
  end

  def send_text(task)
    @client.api.account.messages.create(
      from: @twilio_phone_number,
      to: @recipient_phone_number,
      body: "#{task.description}, #{task.completion_date}"
    )
  end
end