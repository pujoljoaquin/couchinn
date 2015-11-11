class RegistrationsController < Devise::RegistrationsController
before_action :validarDatos, only: [:create]

def validarDatos
	#Valido la fecha de nacimiento
	#esMenor = false
	#LO SIGUIENTE ANDA POR LO QUE FUNCIONA ASI. COMO ACCEDER AL AÑO DE UNT IPO DATE????
	#if(params[:user][:nacionalidad] == "Argentina")
	#	esMenor = true
	#end	
	#fechaSeleccionada = Time.new(params[:user][:fechaNac].year, params[:user][:fechaNac].month, params[:user][:fechaNac].day).to_date
	#fechaUsuario = params[:user][:nacimiento]
	#fechaMenor = Time.new(Time.now.year - 18, Time.now.month, Time.now.day).to_date
	#fechaMenor = DateTime.new(Time.now.year - 18, Time.now.month, Time.now.day)
	#if(params[:user][:fechaNac] > fechaMenor)
#		esMenor = true
	#end
	#if(fechaSeleccionada > fechaMenor)
	#	esMenor = true
	#end
	#if(esMenor == true)
	#	redirect_to couchinn_path, notice: "Debe tener al menos 18 años para poder registrarse"
	#end
	#else CUENTA PREMIUM
	if(params[:user][:esPremium] == true)
		#redirect_to serPremium_path
		redirect_to premiums_path
	end
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