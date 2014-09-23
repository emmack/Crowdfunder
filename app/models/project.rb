class Project < ActiveRecord::Base
	
	belonds_to :creater, class_name: 'User'
	has_many :donations through :rewards
	has_many :backers through :donations, class_name: "User"
	has_many :rewards
	accepts_nested_attributes_for :rewards, :reject_if => :all_blank, :allow_destroy => true
end
