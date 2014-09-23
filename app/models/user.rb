class User < ActiveRecord::Base
	has_many :owned_projects, class_name 'projects'
	has_many :backed_projects,  through: :donations, class_name 'projects'

	has_secure_password
	validates :name, presence: true
	validates :email, presence: true, uniqueness: true

	mount_uploader :avatar, AvatarUploader
end
