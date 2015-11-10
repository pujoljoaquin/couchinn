class RealizarCambioTipoCouch < ActiveRecord::Migration
  def change
  	change_column :couch_types, :activo, :boolean, default:true
  end
end
