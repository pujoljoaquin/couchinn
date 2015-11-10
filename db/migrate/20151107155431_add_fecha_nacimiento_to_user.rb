class AddFechaNacimientoToUser < ActiveRecord::Migration
  def change
    add_column :users, :fechaNacimiento, :date
  end
end
