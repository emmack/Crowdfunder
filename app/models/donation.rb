class Donation < ActiveRecord::Base
	belongs_to :reward
	belongs_to :backer, class_name: 'User', foreign_key: "user_id"
end
