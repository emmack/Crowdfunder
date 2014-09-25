class AddDonationTReward < ActiveRecord::Migration
  def change
  	  	  	add_column :rewards, :donation_id, :integer

  end
end
