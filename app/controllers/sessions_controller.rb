class SessionsController < Devise::SessionsController
	layout "login_layout", only: [:new]
	def new
		super

	end
end