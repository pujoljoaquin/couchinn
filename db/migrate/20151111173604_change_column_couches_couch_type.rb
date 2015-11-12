class ChangeColumnCouchesCouchType < ActiveRecord::Migration
  def change
  	remove_column :couches, :couch_type_id

  end
end
