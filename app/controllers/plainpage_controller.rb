class PlainpageController < ApplicationController

  def index
  	if !current_user || current_user.status != "1"
      redirect_to new_user_session_path
    end
    flash[:success ] = "Success Flash Message: Welcome to GentellelaOnRails"
    #other alternatives are
    # flash[:warn ] = "Israel don't quite like warnings"
    #flash[:danger ] = "Naomi let the dog out!"
  end

end
