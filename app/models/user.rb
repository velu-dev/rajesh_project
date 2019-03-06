class User < ApplicationRecord
  belongs_to :role
	belongs_to :class_detail, optional: true
	has_many :assignments

	def self.authenticate(username_or_email="", login_password="")
		user = User.find_by_email(username_or_email)
		if user && user.password
			return user
		else
			return false
  		end
	end 

end
