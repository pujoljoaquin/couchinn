class RegistrationsController < Devise::RegistrationsController

def show
	@couchesUser = current_user.couches
end

end