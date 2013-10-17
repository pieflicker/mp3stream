class User < ActiveRecord::Base
	has_secure_password
  	validates_presence_of :password, :on => :create
  	validates_presence_of :user_name
  	has_many :songs
  	
end
