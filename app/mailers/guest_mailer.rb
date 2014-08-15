class GuestMailer < ActionMailer::Base
  default from: "michael@lighthouselabs.ca"
  default to: "michael@lighthouselabs.ca"

  def self.call(guest)
    guest_mail = guest_message(guest)
    guest_mail.deliver

    guest_mail = guest_confirmation(guest)
    guest_mail.deliver
  end

  def guest_message(guest)
    @guest = guest
    mail(from: "#{guest.email}", 
        subject: "Growbus")
  end

  def guest_confirmation(guest)
    @guest = guest
    mail(to: "#{guest.email}", 
        subject: "bee-beep!")
  end
end
