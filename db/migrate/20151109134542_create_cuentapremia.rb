class CreateCuentapremia < ActiveRecord::Migration
  def change
    create_table :cuentapremia do |t|
      t.string :banco
      t.string :tarjeta
      t.string :numeroTarjeta
      t.integer :codigoSeguridad
      t.integer :mesVencimiento
      t.integer :yearVencimiento

      t.timestamps
    end
  end
end
