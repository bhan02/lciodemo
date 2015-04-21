class Order < ActiveRecord::Base
	validates :school, :address, :city, :state, :zip, :phone_number, :desired_PD_dates, presence: true

	belongs_to :listing
	belongs_to :buyer, class_name: "User"
	belongs_to :seller, class_name: "User"
end
