class AddColumnCouchesCouchType < ActiveRecord::Migration
  def change
  	add_column :couches, :couch_type_id, :integer
  end
end
