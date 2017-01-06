class MembersController < ApplicationController

  layout "login_layout", only: [:sign_up, :recruitment]

	def index 
    if !current_user || current_user.status != "1"
      redirect_to new_user_session_path
    end
		@members = User.where(status: "1")
	end

	def requests
    if !current_user || current_user.status != "1"
      redirect_to new_user_session_path
    end
		@access = User.where(status: "2")
		@recruitment = User.where(status: "3")
	end

	def accept_request
    
    user = User.find(params[:user])
    user.status = 1
    user.guild_role_id = 1
    user.save
    redirect_to requests_path
  end

  def refuse_request
    user = User.find(params[:user])
    user.status = 4
    user.save
    redirect_to requests_path
  end

  def promote_member
  	user = User.find(params[:user])
    user.guild_role_id = user.guild_role_id + 1
    user.save
    redirect_to members_path
  end

  def demote_member
  	user = User.find(params[:user])
    user.guild_role_id = user.guild_role_id - 1
    user.save
    redirect_to members_path
  end
end
