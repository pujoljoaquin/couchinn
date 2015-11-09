class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nombre, :string
    add_column :users, :apellido, :string
    add_column :users, :nombreUsuario, :string
    add_column :users, :fechaNac, :datetime
    add_column :users, :nacionalidad, :string
    add_column :users, :esPremium, :boolean, default: false
  end
end
