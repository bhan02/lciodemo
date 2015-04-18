class AddFieldsToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :buyer_id, :integer
    add_column :bookings, :seller_id, :integer
  end
end
