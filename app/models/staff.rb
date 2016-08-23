class Staff < ActiveRecord::Base
	belongs_to :user
	has_many :reviews
		acts_as_votable

	resourcify

	has_attached_file :staff_img, :styles => { :medium => "700x500#", :small => "350x250>" }, :default_url => "missing.jpg"
	validates_attachment_content_type :staff_img, :content_type => /\Aimage\/.*\Z/
end
