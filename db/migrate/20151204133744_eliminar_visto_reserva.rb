class EliminarVistoReserva < ActiveRecord::Migration
  def change
  	remove_column :reservas, :visto
  end
end
