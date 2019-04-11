module UsersHelper
	def user_class(user)
		if user.class_detail.present?
			return user.class_detail.class_name
		else
			return "N/A"
		end
	end
end
