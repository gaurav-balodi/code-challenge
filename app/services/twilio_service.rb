class TwilioService
  def send_message(message:)
  	@client.messages.create(
	  from: '+14159341234',
	  to: '+919041638145',
	  body: message
	) if message.present?
  end

  private
  def client
  	@client = Twilio::REST::Client.new account_sid, auth_token
  end

  def account_sid
  	@account_sid = Rails.application.credentials.twilio_account_sid
  end

  def auth_token
  	@auth_token = Rails.application.credentials.twilio_auth_token
  end
end
