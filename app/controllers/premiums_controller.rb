class PremiumsController < ApplicationController
  
def index
  if params[:commit] == "Pagar"
  	current_user.serPremium(params[:aux])
    redirect_to users_show_path, notice: "Felicitaciones!!! Ya sos premium!"
  end
end

def update
end

end