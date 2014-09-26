class AddColumnProjectsCat < ActiveRecord::Migration
  def change
  end
    	add_column :projects, :category_id, :integer

end
