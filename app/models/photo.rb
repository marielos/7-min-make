class Photo < ActiveRecord::Base
	belongs_to :prompt

	validates :file_name, :presence=>true
end
