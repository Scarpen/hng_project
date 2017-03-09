class MidiaTopic < ActiveRecord::Base
	belongs_to :gvg_core
	has_many :comments
	belongs_to :user
end
