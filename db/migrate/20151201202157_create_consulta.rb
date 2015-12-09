class CreateConsulta < ActiveRecord::Migration
  def change
    create_table :consulta do |t|
      t.text :pregunta
      t.text :respuesta
      t.datetime :fechaPregunta
      t.datetime :fechaRespuesta
      t.integer :user_id
      t.integer :couch_id

      t.timestamps
    end
  end
end
