class CouchesController < ApplicationController

def show
	@couch = Couch.find(params[:id])
end	

def index
end

def destroy
	couch = Couch.find(params[:id])
	couch.destroy
	redirect_to users_show_path
end
end
