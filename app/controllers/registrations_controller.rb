class RegistrationsController < Devise::RegistrationsController
before_action :validarDatos, only: [:create]

def validarDatos
	#Valido la fecha de nacimiento
	#esMenor = false
	#LO SIGUIENTE ANDA POR LO QUE FUNCIONA ASI. COMO ACCEDER AL AÑO DE UNT IPO DATE????
	#if(params[:user][:nacionalidad] == "Argentina")
	#	esMenor = true
	#end	
	#fechaSeleccionada = Date.parse(params[:user][:fechaNacimiento])
	#fechaUsuario = params[:user][:nacimiento]
	#fechaMenor = Time.new(Time.now.year - 18, Time.now.month, Time.now.day)
	#numero_de_dias = (fechaSeleccionada - fechaMenor).to_i
	#if(params[:user][:nacimiento] > fechaMenor)
	#	esMenor = true
	#end
	#if(esMenor == true)
	#	redirect_to couchinn_path, notice: "Debe tener al menos 18 años para poder registrarse"
	#end
	#else CUENTA PREMIUM
end

end


	#if ((params[:user][:fechaNac].year - Date.today.year)<18)
		#redirect_to new_user_registration_path, notice: "Debe tener al menos 18 años para poder registrarse"
	#	esMenor = true
	#else
	#	if(((params[:user][:fechaNac].year - Date.today.year) == 0)&&(params[:user][:fechaNac].month > Date.today.month))
			#redirect_to new_user_registration_path, notice: "Debe tener al menos 18 años para poder registrarse"
	#		esMenor = true
	#	else
	#		if(((params[:user][:fechaNac].year - Date.today.year) == 0)&&(params[:user][:fechaNac].month >= Date.today.month)&&(params[:user][:fechaNac].day > Date.today.day))
				#redirect_to new_user_registration_path, notice: "Debe tener al menos 18 años para poder registrarse"
	#			esMenor = true
	#		end
	#	end
	#end