class User < ActiveRecord::Base
	 has_secure_password
	 validates :password, :confirmation => { message: 'password' }
end
