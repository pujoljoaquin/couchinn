class Consulta < ActiveRecord::Base
belongs_to :couch
belongs_to :user
default_scope -> { order('"consulta"."fechaPregunta"') }

def vista
	self.respuestaVista = true;
	self.save
end
end
