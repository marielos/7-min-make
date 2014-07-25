class Photo < ActiveRecord::Base
	belongs_to :prompt

	validates :image_file, :presence=>true
end
