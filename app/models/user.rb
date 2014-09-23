class User < ActiveRecord::Base
	has_many :owned_projects, class_name: 'projects'
	has_many :backed_projects,  through: :donations, class_name: 'projects'

	has_secure_password
	validates :email, presence: true, uniqueness: true

end
