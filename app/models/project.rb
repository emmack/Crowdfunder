class Project < ActiveRecord::Base
	
	belongs_to :creater, class_name: 'User'
	has_many :rewards
	has_many :donations,  through: :rewards
	has_many :backers, through: :donations, source: :backer
	accepts_nested_attributes_for :rewards, :reject_if => :all_blank, :allow_destroy => true
	accepts_nested_attributes_for :donations, :reject_if => :all_blank

end
