class CouchType < ActiveRecord::Base
	
	validates_uniqueness_of :nombre, :message => "El tipo de Couch ya existe"
	validates_presence_of :nombre, :message => "Este campo no puede estar vacío"

	has_many :couches
	##vaidates_length_of:nombre,minimum:2, message:"El nombre es muy corto"
	##vaidates_length_of:nombre,maximum:30, message: "El nombre es muy largo"
end
