class PassengerMailer < ApplicationMailer
  default from: 'emanyueru@gmail.com'

  def booking_confirmation_email(user, booking)
    @user = user
    @booking = booking
    mail(to: @user.email, subject: 'Booking confirmed')
  end
end
