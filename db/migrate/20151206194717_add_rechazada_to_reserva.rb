class AddRechazadaToReserva < ActiveRecord::Migration
  def change
  	add_column :reservas, :rechazada, :boolean, default:false
  end
end
