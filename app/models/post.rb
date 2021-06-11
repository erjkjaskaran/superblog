class Post < ApplicationRecord
	belongs_to :user
	validates :title,uniqueness:{case_sensitive: false}, presence: true, length: {minimum:1, maximum: 50}
	validates :description, presence: true, length: {minimum:10, maximum:500}

end