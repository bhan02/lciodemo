class AddExpertiseToListing < ActiveRecord::Migration
  def change
    add_column :listings, :expertise, :text
  end
end
