class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
protected
	def configure_permitted_parameters
		
		devise_parameter_sanitizer.for(:sign_up) << :nick
		devise_parameter_sanitizer.for(:sign_up) << :alt1		
		devise_parameter_sanitizer.for(:sign_up) << :alt2
		devise_parameter_sanitizer.for(:sign_up) << :gvg
		devise_parameter_sanitizer.for(:sign_up) << :item_id
		devise_parameter_sanitizer.for(:sign_up) << :account
		devise_parameter_sanitizer.for(:sign_up) << :recruiter
		devise_parameter_sanitizer.for(:sign_up) << :recruitment
		devise_parameter_sanitizer.for(:sign_up) << :activity_hour
		devise_parameter_sanitizer.for(:sign_up) << :reason
		devise_parameter_sanitizer.for(:sign_up) << :last_guild
		devise_parameter_sanitizer.for(:sign_up) << :player_type_id
		devise_parameter_sanitizer.for(:sign_up) << :class_role_id
		devise_parameter_sanitizer.for(:sign_up) << :guild_role_id
		devise_parameter_sanitizer.for(:sign_up) << :gvg_core_id
		devise_parameter_sanitizer.for(:sign_up) << :status
		devise_parameter_sanitizer.for(:sign_up) << :avatar
		devise_parameter_sanitizer.for(:sign_up) << :core_status
		devise_parameter_sanitizer.for(:sign_up) << :recruitment_access
		devise_parameter_sanitizer.for(:sign_up) << :raids
		devise_parameter_sanitizer.for(:sign_up) << :pk
		devise_parameter_sanitizer.for(:sign_up) << :zvz
		devise_parameter_sanitizer.for(:sign_up) << :gathering
		devise_parameter_sanitizer.for(:sign_up) << :dungeons
		devise_parameter_sanitizer.for(:sign_up) << :crafting
		devise_parameter_sanitizer.for(:sign_up) << :farming
		devise_parameter_sanitizer.for(:sign_up) << :construct
		devise_parameter_sanitizer.for(:sign_up) << :territory_feed
		devise_parameter_sanitizer.for(:sign_up) << :castle
		devise_parameter_sanitizer.for(:sign_up) << :warcamp

		#devise_parameter_sanitizer.for(:sign_up) << { ability_ids: [] }
		#devise_parameter_sanitizer.for(:sign_up) << { interest_ids: [] }
		devise_parameter_sanitizer.for(:account_update) << :nick
		devise_parameter_sanitizer.for(:account_update) << :alt1		
		devise_parameter_sanitizer.for(:account_update) << :alt2
		devise_parameter_sanitizer.for(:account_update) << :gvg
		devise_parameter_sanitizer.for(:account_update) << :item_id
		devise_parameter_sanitizer.for(:account_update) << :account
		devise_parameter_sanitizer.for(:account_update) << :recruiter
		devise_parameter_sanitizer.for(:account_update) << :recruitment
		devise_parameter_sanitizer.for(:account_update) << :activity_hour
		devise_parameter_sanitizer.for(:account_update) << :reason
		devise_parameter_sanitizer.for(:account_update) << :last_guild
		devise_parameter_sanitizer.for(:account_update) << :player_type_id
		devise_parameter_sanitizer.for(:account_update) << :class_role_id
		devise_parameter_sanitizer.for(:account_update) << :guild_role_id
		devise_parameter_sanitizer.for(:account_update) << :gvg_core_id
		devise_parameter_sanitizer.for(:account_update) << :status
		devise_parameter_sanitizer.for(:account_update) << :avatar
		devise_parameter_sanitizer.for(:account_update) << :core_status
		devise_parameter_sanitizer.for(:account_update) << :recruitment_access
		devise_parameter_sanitizer.for(:account_update) << :raids
		devise_parameter_sanitizer.for(:account_update) << :pk
		devise_parameter_sanitizer.for(:account_update) << :zvz
		devise_parameter_sanitizer.for(:account_update) << :gathering
		devise_parameter_sanitizer.for(:account_update) << :dungeons
		devise_parameter_sanitizer.for(:account_update) << :crafting
		devise_parameter_sanitizer.for(:account_update) << :farming
		devise_parameter_sanitizer.for(:account_update) << :construct
		devise_parameter_sanitizer.for(:account_update) << :territory_feed
		devise_parameter_sanitizer.for(:account_update) << :castle
		devise_parameter_sanitizer.for(:account_update) << :warcamp

		#devise_parameter_sanitizer.for(:account_update) << { ability_ids: [] }
		#devise_parameter_sanitizer.for(:account_update) << { interest_ids: [] }
	end
end
