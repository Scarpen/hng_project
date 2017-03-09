class GvgCore < ActiveRecord::Base
	belongs_to :user, :foreign_key => :user_id
	has_many :users
	has_many :midia_topics
	mount_uploader :avatar, AvatarUploader
end
