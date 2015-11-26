class EliminarFechaPremium < ActiveRecord::Migration
  def change
  	remove_column :users, :fechaPremium
  end
end
