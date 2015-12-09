class EliminarPuntuacionCouch < ActiveRecord::Migration
  def change
  	remove_column :couch, :puntuacion
  	
  end
end
