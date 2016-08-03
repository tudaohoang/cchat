class User < ApplicationRecord
	validates :name, presence:true
	validates :email, presence:true, uniqueness: {case_insensitive:false}

	has_secure_password
	validates :email, email_format: { message: "Wrong email format" }
end
