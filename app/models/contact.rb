class Contact < MailForm::Base
 attribute :name, :validate => true
 attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
 attribute :file, :attachment => true
 attribute :message
 attribute :nickname,  :captcha  => true
 attribute :additional_field, :captcha => true

 append :remote_ip, :user_agent, :session

 def headers
 {
 :subject => "My Contact Form",
 :to => "finance@infohtechict.com",
 :from => %("#{name}" <#{email}>)
 }
 end
end
