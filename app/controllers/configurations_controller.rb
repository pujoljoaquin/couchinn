class ConfigurationsController < ApplicationController
def show
end
def index
end
def registrados
	@users = User.all
end

end