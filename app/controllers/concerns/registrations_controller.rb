class RegistrationsController < Devise::RegistrationsController
#after_action :validarDatos, only: [:new]

#def validarDatos
	#Valido la fecha de nacimiento
#	build_resource(sign_up_params)
#	if ((resource.fechaNac.Year - Date.today.Year)<18)
#		redirect_to new_user_registration_path, notice: "Debe tener al menos 18 años para poder registrarse"
#	else
#		if((resource.fechaNac.Year == Date.today.Year)&&(self.fechaNac.Month < Date.today.Month))
#			redirect_to new_user_registration_path, notice: "Debe tener al menos 18 años para poder registrarse"
#		else
#			if((resource.fechaNac.Year == Date.today.Year)&&(self.fechaNac.Month >= Date.today.Month)&&(self.fechaNac.Day < Date.today.Day))
#				redirect_to new_user_registration_path, notice: "Debe tener al menos 18 años para poder registrarse"
#			end
#		end
#	end
#end

end