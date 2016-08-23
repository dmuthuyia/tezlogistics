class User < ActiveRecord::Base
  rolify
	has_many :products
	has_many :comments

  devise :omniauthable, :omniauth_providers => [:digitalocean]
  devise :omniauthable, :omniauth_providers => [:facebook]
  #devise :omniauthable, :omniauth_providers => :facebook

	has_many :staffs
	has_many :reviews
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
      end
  end

    has_attached_file :mypic, :styles => { :medium => "20x20>", :thumb => "10x10>" }, :default_url => "missing.png"
    validates_attachment_content_type :mypic, :content_type => /\Aimage\/.*\Z/
end
