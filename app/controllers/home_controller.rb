class HomeController < ApplicationController

def index
	if !current_user 
		redirect_to new_user_session_path
	end
	@notifies = Notify.all
end

end
