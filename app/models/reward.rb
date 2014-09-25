class Reward < ActiveRecord::Base
	
	belongs_to :user
	belongs_to :project
	has_many :donations
	accepts_nested_attributes_for :donations, :reject_if => :all_blank

end
