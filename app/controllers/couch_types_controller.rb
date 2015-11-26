class CouchTypesController < ApplicationController
before_action :get_couch_type, only: [:edit, :update]


def get_couch_type
	@type = CouchType.find(params[:id])
end

def new
	@couch_type = CouchType.new
end
def create
	@couch_type = CouchType.create(params.require(:couch_type).permit(:nombre,:activo))
	if @couch_type.errors.empty?
		redirect_to couch_types_path
	else
		redirect_to new_couch_type_path, notice: "El tipo de couch ya existe"
	end
end

def update
	@type.update(params.require(:couch_type).permit(:nombre,:activo))
	if @type.errors.empty?
		redirect_to couch_types_path
	else
		redirect_to edit_couch_type_path, notice: "El tipo de couch ya existe"
	end
end

def index
end

def edit
end

end