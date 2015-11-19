class CreateReservas < ActiveRecord::Migration
  def change
    create_table :reservas do |t|
      t.integer :couch_id
      t.datetime :inicio
      t.datetime :fin
      t.boolean :confirmada, default:false
      t.integer :user_id

      t.timestamps
    end
  end
end
