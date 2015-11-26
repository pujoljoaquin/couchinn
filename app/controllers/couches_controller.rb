class CouchesController < ApplicationController
def show

	@couch = Couch.find(params[:id])
end	
def index
end

def indexreservas
	@couch = Couch.find(params[:id])
end
end
