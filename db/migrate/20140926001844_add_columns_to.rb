class AddColumnsTo < ActiveRecord::Migration
  def change
	add_column :categories, :name, :string
  	add_column :categories, :project_id, :string
  end
end

