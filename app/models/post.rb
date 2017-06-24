class Post < ActiveRecord::Base

	acts_as_votable
	belongs_to :user
	has_many :comments

	if Rails.env.development?
	  has_attached_file :image, :styles => { medium: "700x500#", small: "350x250#"}
	  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf"]
	else
	  has_attached_file :image, :styles => { medium: "700x500#", small: "350x250#"},
	            :storage => :dropbox,
	            :dropbox_credentials => Rails.root.join("config/dropbox.yml"), 
	            :path => ":style/:id_:filename"
	  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf"]
	end
end