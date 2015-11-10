class CreateCouches < ActiveRecord::Migration
  def change
    create_table :couches do |t|
      t.string :nombre
      t.string :descripcion
      t.string :lugar
      t.integer :puntuacion
      t.boolean :disponibilidad
      t.integer :capacidad
      t.integer :usuario_id
      t.string :imagen 
      t.string :tipo

      t.timestamps
    end
  end
end
