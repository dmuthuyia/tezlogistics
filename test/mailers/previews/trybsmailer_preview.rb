# Preview all emails at http://localhost:3000/rails/mailers/trybsmailer
class TrybsmailerPreview < ActionMailer::Preview
  def sample_mail_preview
   Trybsmailer.sample_email(User.first)
  end
end
