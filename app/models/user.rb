class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :trackable, :validatable #:authentication_keys => [ :login ]
	 #validates :userName, presence: true, :uniqueness => { :case_sensitive => false }

	 #attr_accessor :login
	
	# VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	# validates :email, presence: true, length: { maximum: 255 },
	# 		format: { with: VALID_EMAIL_REGEX },
	# 		uniqueness: { case_sensitive: false }

	# has_secure_password
	# validates :password, presence: true, length: { minimum: 12 }
	
end
