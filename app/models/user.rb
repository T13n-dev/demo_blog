class User < ApplicationRecord
	# add bscypt here
	has_secure_password
end