module SessionsHelper

	def sign_in(user)
		cookies.permanent[:id] = user.id
		self.current_user = user
	end

	def signed_in?
		!current_user.nil?
	end

	def current_user=(user)
		@current_user = user
	end

	def current_user
		@current_user ||= User.find_by_id(cookies[:id])
	end

	def sign_out
		self.current_user = nil
		cookies.delete(:id)
	end

end
