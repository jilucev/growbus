class GuestMailer < ActionMailer::Base
  default from: "michael@lighthouselabs.ca"
  default to: "michael@lighthouselabs.ca"

  def self.call(guest)
    guest_mail = guest_message(guest)
    guest_mail.deliver
  end

  def guest_message(guest)
    @guest = guest
    mail(from: "#{guest.email}", 
        subject: "Growbus")
  end
end
