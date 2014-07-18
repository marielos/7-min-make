class Photo < ActiveRecord::Base
	belongs_to :prompt

	validates :file_name, :user_name, :user_email, :presence=>true
end
