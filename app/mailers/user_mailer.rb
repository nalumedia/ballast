class UserMailer < ActionMailer::Base
   default from: "Ballast Hardware <support@ballasthardware.com>"
 
  def welcome_email(contact)
    @contact = contact
    mail(to: "ryan.dranginis@gmail.com, dranginis.eric@gmail.com", subject: 'Contact From BallastHardware.com')
  end

end

