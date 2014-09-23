class AddRewardId < ActiveRecord::Migration
  def change
  	add_column :donations, :reward_id, :integer
  end
end
