class Couch < ActiveRecord::Base
belongs_to :user
belongs_to :couch_type
scope :prueba, -> { order ("puntuacion")}
scope :prioridades, -> { order ("user.esPremium desc") }
	#.order("created_at desc") 
end