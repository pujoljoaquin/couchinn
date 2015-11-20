class Couch < ActiveRecord::Base
belongs_to :user
belongs_to :couch_type
scope :prueba, -> { order ("puntuacion")}
scope :prioridades, -> { order ('"couches"."esPremium" desc') }

def serPremium
	self.esPremium = true
	self.save
end
end