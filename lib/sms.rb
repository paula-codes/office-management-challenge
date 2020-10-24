require 'twilio-ruby'

class SMS

  def send_text

    account_sid = 'XXXXXXXXXXXXXX'
    auth_token = 'XXXXXXXXXXXXXXX'
    client = Twilio::REST::Client.new(account_sid, auth_token)

    from = 'XXXXXXXXXX' 
    to = 'XXXXXXXXX' 

    client.messages.create(
    from: from,
    to: to,
    body: "A meeting room has just become available!"
    )

  end

end