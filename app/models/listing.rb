class Listing < ActiveRecord::Base
	if Rails.env.development?
		has_attached_file :image, :styles => { :medium => "200x>", :thumb => "200x200>" }, :default_url => "default.png"
		validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	else	
		has_attached_file :image, :styles => { :medium => "200x>", :thumb => "100x100>" }, :default_url => "default.png", 
					  :storage => :dropbox,
					  :dropbox_credentials => Rails.root.join("config/dropbox.yml"), 
					  :path => ":style/:id_:filename"
  	end  			
  	
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/	
  validates :name, :description, :expertise, :pd_offering, presence: true
  validates_attachment_presence :image

  belongs_to :user
  has_many :bookings

end  
