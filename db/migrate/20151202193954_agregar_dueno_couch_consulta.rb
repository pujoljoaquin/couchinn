class AgregarDuenoCouchConsulta < ActiveRecord::Migration
  def change
  	add_column :consulta, :userCouch, :integer
  end
end
