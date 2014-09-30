class Link < ActiveRecord::Base
	validates :original_url, presence: true

	before_save do
		self.short_url = "www.myshortner.com/#{self.original_url}"
	end
end
