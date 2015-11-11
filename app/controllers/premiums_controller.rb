class PremiumsController < ApplicationController
  
def index
end

def update
  if params[:commit] == 'Pagar'
    redirect_to couches_path
  #elsif params[:commit] == 'Update form 2'
    #do something else
  end
end
end