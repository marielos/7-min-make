class Prompt < ActiveRecord::Base
	has_many :photos

	validates :title, :presence =>true
end
