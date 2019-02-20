class User < ApplicationRecord
  belongs_to :role

	def self.authenticate(username_or_email="", login_password="")
		user = User.find_by_email(username_or_email)
		if user && user.password
			return user
		else
			return false
  		end
	end 

end
