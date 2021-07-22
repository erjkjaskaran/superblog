class Post < ApplicationRecord
	belongs_to :user
	validates :title,uniqueness:{case_sensitive: false}, presence: true, length: {minimum:1, maximum: 50}
	validates :description, presence: true, length: {minimum:10, maximum:500}
	def self.search(search)
		if search
			key = search[0].gsub(/[(\"\')]/, "")
			columns = %w{title}
			where(
				columns
					.map {|c| " lower(#{c}) LIKE '%#{key}%' " }
					.join(' OR ')
			)
		else
			all
		end
	end

end