class AddDatosToUser < ActiveRecord::Migration
  def change
    add_column :users, :esAdmin, :string
    add_column :users, :boolean, :string
    add_column :users, :fechaPremium, :string
    add_column :users, :datetime, :string
  end
end
