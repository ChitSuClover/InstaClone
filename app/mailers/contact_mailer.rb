class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail to: "chitsuwai.rika@gmail.com", subject: "Post Uploaded"
  end
end
