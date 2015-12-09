class Puntuacion < ActiveRecord::Base
	belongs_to :from_user , class_name: "User", foreign_key: "from"
	belongs_to :couch
	belongs_to :user
	belongs_to :reserva
end

