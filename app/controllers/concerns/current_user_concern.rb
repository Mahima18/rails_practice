module CurrentUserConcern
	extend ActiveSupport::Concern

	def current_user 
		super || guest_user
	end

	def guest_user
		# openstruct mimics user in terms of data but doesnt have other methods built in like active methods
		# OpenStruct.new(name: "Guest User", first_name: "Guest", last_name: "User", email: "guest@xyz.com")

		# therefore, we use this (using petergate)
		guest = GuestUser.new
		guest.name = "Guest User"
		guest.first_name = "Guest"
		guest.last_name = "User"
		guest.email = "guest@xyz.com"
		guest 
	end
end