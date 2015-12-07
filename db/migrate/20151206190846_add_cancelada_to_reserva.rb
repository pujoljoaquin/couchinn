class AddCanceladaToReserva < ActiveRecord::Migration
  def change
  	add_column :reservas, :cancelada, :boolean, default:false
  end
end
