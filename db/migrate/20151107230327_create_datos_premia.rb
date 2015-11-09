class CreateDatosPremia < ActiveRecord::Migration
  def change
    create_table :datos_premia do |t|
      t.string :banco
      t.string :tarjeta
      t.integer :numeroTarjeta
      t.integer :codigoSeguridad
      t.integer :mesVencimiento
      t.integer :yearVencimiento

      t.timestamps
    end
  end
end
