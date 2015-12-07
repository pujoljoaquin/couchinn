class AgregarColumnaConsulta < ActiveRecord::Migration
  def change
  	add_column :consulta, :respuestaVista, :boolean, default:false
  end
end
