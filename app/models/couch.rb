class Couch < ActiveRecord::Base
belongs_to :user
belongs_to :couch_type
has_many :consultas
has_many :reservas
scope :prueba, -> { order ("puntuacion")}
scope :prioridades, -> { order ('"couches"."esPremium" desc') }

def is_free?(check_in, check_out)
    reservas_couch = self.reservas# reservas del couch (por el has_many)
    reservas_confirmadas = reservas_couch.where(confirmada:true) # solo miramos las confirmadas
    #if check_in != nil && check_in != ""
    	reservas_confirmadas = reservas_confirmadas.where('? < fin', check_in) # from se copiaría en el lugar de '?'
    #end
    #if check_out != nil && check_out != ""
    	reservas_confirmadas = reservas_confirmadas.where('? > inicio', check_out) # to se copiaría en el lugar de '?'
    #end
    # Retorno true o false si el resultado de lo anterior 
    # está vacío o no
    return reservas_confirmadas.empty?  
end
def self.filtrados(tipo, lugar, capacidad, puntuacion)

	couches = Couch.all.prioridades

	if lugar != nil 
		couches = couches.where("lugar ILIKE ?", "%#{lugar}%")
	end
	if capacidad != nil && capacidad != "" 
		couches = couches.where( "capacidad >= ?", "#{capacidad}")
	end
	if puntuacion != nil && puntuacion != ""
		couches = couches.where( "puntuacion >= ?", "#{puntuacion}")
	end
	if tipo != nil && tipo != ""
		couches = couches.where( "couch_type_id = ?", "#{tipo}")
	end

	return couches

end
def self.free_couches(tipo, lugar, capacidad, puntuacion, check_in, check_out)
    result = [] # En result agregaremos los hospedajes libres
    c = Couch.filtrados(tipo, lugar, capacidad, puntuacion) 
    c.each do |couch|
      result << couch if couch.is_free?(check_in, check_out) # Agregamos el hospedaje si está libre
    end

    return result
end
def serPremium
	self.esPremium = true
	self.save
end
end
