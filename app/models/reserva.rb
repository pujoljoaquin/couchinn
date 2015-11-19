class Reserva < ActiveRecord::Base
belongs_to :couch
validate :validar_fin
validate :validar_inicio

def validar_fin
self.couches.each do |reserva|
	if self.inicio<=reserva.inicio && self.fin>=reserva.inicio then
		errors.add(:fin, "Hay un periodo de la reserva que el Couch esta ocupado. La fecha de salida debe ser menor a "reserva.inicio)
	end
end
def validar_inicio
	self.couches.each do |reserva|
	if self.inicio>=reserva.inicio && self.inicio<=reserva.fin then
		error.add(:inicio, "Hay un periodo de la reserva que el Couch esta ocupado. La fecha de entrada debe ser mayor a "reserva.fin)
	end
end

end
