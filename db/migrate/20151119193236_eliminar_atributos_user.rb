class EliminarAtributosUser < ActiveRecord::Migration
  def change
  	remove_column :users, :boolean
  	remove_column :users, :datetime
  	remove_column :users, :fechaNacimiento
  	remove_column :users, :nacimiento
  end
end
