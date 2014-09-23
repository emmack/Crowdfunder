class AddColumns < ActiveRecord::Migration
  def change
  	add_column :projects, :name, :string
  	add_column :projects, :description, :text
  	add_column :projects, :goal, :integer
  	add_column :projects, :start_date, :date
  	add_column :projects, :end_date, :date

  	add_column :users, :first_name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :email, :string
  	add_column :users, :password_digest, :string

  	add_column :donations, :user_id, :integer
  	add_column :donations, :project_id, :integer
  	add_column :donations, :amount, :integer

  end
end
