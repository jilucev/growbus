class GuestMailer < ActionMailer::Base
  default from: "michael@lighthouselabs.ca"
  default to: "jilucev7@gmail.com"

  def self.call(guest)
    guest_mail = thing(guest)
    guest_mail.deliver
  end

  def thing(guest)
    @guest = guest
    # @url  = 'http://example.com/login'
    mail(from: "#{guest.email}", subject: "Growbus")
  end
end
