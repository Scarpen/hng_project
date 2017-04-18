class ItensController < ApplicationController
	def index
		@members = User.where(status: "1")
	end

	def update_crafts
	    userparams = params[:user]
	    user = User.find(params[:user_id])
	    user.crafts = userparams[:crafts]
	    user.save
	    redirect_to itens_path
  	end
end
