class AgregarRelacionesReservas < ActiveRecord::Migration
  def change
  	add_column :puntuacions, :reserva_id, :integer, default:nil
  end
end
