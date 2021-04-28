class ContactMailer < ApplicationMailer
  def contact_mail(blog)
    @blog = blog
    mail to: "chitsuwai.rika@gmail.com", subject: "Post Uploaded"
  end
end
