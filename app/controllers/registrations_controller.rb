class RegistrationsController < Devise::RegistrationsController

def show
	@couchesUser = current_user.couches
end

def missolicitudes
end

def misreservas
end

end