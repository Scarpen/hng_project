class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :class_role
  belongs_to :guild_role
  belongs_to :gvg_core
  
  mount_uploader :avatar, AvatarUploader
  
end
