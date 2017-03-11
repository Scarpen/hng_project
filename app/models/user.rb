class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :class_role
  belongs_to :guild_role
  belongs_to :gvg_core
  has_many :comments
  has_many :midia_topics
  has_many :notifies

  has_many :events
  mount_uploader :avatar, AvatarUploader
  
end
