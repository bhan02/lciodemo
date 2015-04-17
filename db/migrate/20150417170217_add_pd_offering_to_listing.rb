class AddPdOfferingToListing < ActiveRecord::Migration
  def change
    add_column :listings, :pd_offering, :text
  end
end
