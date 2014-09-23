class AddColsReward < ActiveRecord::Migration
  def change
  	add_column :rewards, :amount, :integer
  	add_column :rewards, :description, :text
  end

end
