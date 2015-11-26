class PremiumsController < ApplicationController
  
def index
  if params[:commit] == "Pagar"
  	current_user.serPremium
    redirect_to users_show_path, notice: "Felicitaciones!!! Ya es premium!"
  end
end

def update
end

end