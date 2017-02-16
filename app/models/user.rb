require 'bcrypt'
class User < ApplicationRecord
	include bcrypt

	has_many :menus

	validates :username, :password_hash, presence: true
	validates :username, uniqueness: true

	def password
		@password ||= Password.new(password_hash)
	end

	def password=(new_password)
		@password = Password.create(new_password)
		self.password_hash = @password
	end	

end
