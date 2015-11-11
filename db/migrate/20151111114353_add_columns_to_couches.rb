class AddColumnsToCouches < ActiveRecord::Migration
  def change
  	rename_column :couches, :usuario_id, :user_id
  	rename_column :couches, :tipo, :couch_type_id
  end
end
