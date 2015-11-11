class CouchTypesController < ApplicationController
before_action :get_couch_type, only: [:edit, :update, :destroy]

def get_couch_type
	@type = CouchType.find(params[:id])
end

def new
	@couch_type = CouchType.new
end

def create
	@couch_type = CouchType.create(params.require(:couch_type).permit(:nombre,:activo))
	redirect_to couch_types_path
end

def update
	#tipo.activo=true
	redirect_to couch_types_path
end

def index
end

def edit
end

def destroy
	tipo.activo=false
	redirect_to couch_types_path
end

end