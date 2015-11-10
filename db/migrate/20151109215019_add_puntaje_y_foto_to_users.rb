class AddPuntajeYFotoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :puntaje, :integer
    add_column :users, :foto, :string
  end
end
