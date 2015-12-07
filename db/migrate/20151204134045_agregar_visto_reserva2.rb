class AgregarVistoReserva2 < ActiveRecord::Migration
  def change
  	add_column :reservas, :visto, :boolean, default:true
  end
end
