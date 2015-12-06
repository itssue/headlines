class Article < ActiveRecord::Base
	validates :title, :link, presence: true

	def body
		"#{title}\n#{link}"
	end
end
