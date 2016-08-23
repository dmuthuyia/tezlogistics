class Product < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	belongs_to :category

	acts_as_votable

	resourcify

	has_attached_file :product_img, :styles => { :medium => "500x300#", :small => "350x250>" }, :default_url => "missing.jpg"
	validates_attachment_content_type :product_img, :content_type => /\Aimage\/.*\Z/
end
