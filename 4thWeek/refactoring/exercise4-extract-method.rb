# BEFORE
=begin
class Mail
  def initialize(email, fancy = false)
    @email = email
    @fancy = fancy
  end

  def send_message
    mail_server = MailServer.connect("http://mixmax.com", api_key: "f20506xx808c")
    base_body = "Welcome to MyProduct"

    body = @fancy ? "#{ base_body }, fancy person!" : base_body

    mail_server.send_message({ to: @email, body: body })
  end
end
=end

 # AFTER
 
 class Mail
  def initialize(email, fancy = false)
    @email = email
    @fancy = fancy
  end

  def send_message
    mail_server = MailServer.connect("http://mixmax.com", api_key: "f20506xx808c")

    mail_server.send_message({ to: @email, body: body })
  end

  def body
    base_body = "Welcome to MyProduct"
    body = @fancy ? "#{ base_body }, fancy person!" : base_body
  end
end