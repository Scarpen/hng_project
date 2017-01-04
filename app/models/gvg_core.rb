class GvgCore < ActiveRecord::Base
	belongs_to :user, :foreign_key => :user_id
	has_many :users
	mount_uploader :avatar, AvatarUploader
end
