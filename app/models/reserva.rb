class Reserva < ActiveRecord::Base
belongs_to :couch
belongs_to :user
validate :validar_fecha_ocupada
validate :validar_fecha_invalida
default_scope -> { order("inicio") }
scope :pendientes, -> { where confirmada: false}
scope :confirmadas, -> { where confirmada: true}
scope :novistas, -> { where visto: false}
@errors = nil


def validar_fecha_ocupada
	@errors.add(:inicio, "El couch está ocupado") unless self.couch.is_free?(self.inicio,self.fin)
end


def validar_fecha_invalida
	if self.inicio<Date.today
		@errors.add(:inicio, "La fecha de entrada está en el pasado")
	end
	if self.inicio>self.fin
		@errors.add(:fin, "La fecha de salida debe ser posterior a la de entrada")
	end
end


end

