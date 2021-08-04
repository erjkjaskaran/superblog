class User < ApplicationRecord
	has_many :comments
	has_many :posts
	has_many :orders
	has_one :profile
	before_save {self.email=email.downcase}
	VALID_EMAIL_REGEX= /\A[\w]*[\S[\w]*]*@[\w]*.\w{2,}/m
	validates :username, presence: true,uniqueness: {case_sensitive:false}, length: {minimum: 3, maximum: 25}
	validates :email, presence: true,uniqueness: {case_sensitive:false}, format: {with: VALID_EMAIL_REGEX}
 	has_secure_password validations: false
end 
