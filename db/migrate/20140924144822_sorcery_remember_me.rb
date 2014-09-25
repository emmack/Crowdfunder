class SorceryRememberMe < ActiveRecord::Migration
  def change
    add_column :users, :remember_me_token, :string, :default => nil
    add_column :users, :remember_me_token_expires_at, :datetime, :default => nil
    add_column :users, :salt, :string
    add_column :users, :crypted_password, :string
    add_index :users, :remember_me_token
    add_index :users, :email, unique: true

  end
end
