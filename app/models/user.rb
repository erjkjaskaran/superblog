class User < ApplicationRecord
	has_many :comments
	has_many :posts

	VALID_EMAIL_REGEX= /\A[\w+\-.]+@[a-z\d-.]+\.[a-z]+\z/i
	validates :username, presence: true,uniqueness: {case_sensitive:false}, length: {minimum: 3, maximum: 25}
	validates :email, presence: true,uniqueness: {case_sensitive:false}, format: {with: VALID_EMAIL_REGEX} 
end