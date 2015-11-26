class PremiumsController < ApplicationController
  
def index
  if params[:commit] == "Pagar"
  	current_user.serPremium
    redirect_to couches_path
  end
end

def update
end

end