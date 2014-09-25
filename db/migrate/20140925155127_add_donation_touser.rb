class AddDonationTouser < ActiveRecord::Migration
  def change
  	  	add_column :users, :donation_id, :integer
  end
end
