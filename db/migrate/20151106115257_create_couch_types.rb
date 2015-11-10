class CreateCouchTypes < ActiveRecord::Migration
  def change
    create_table :couch_types do |t|
      t.string :nombre
      t.boolean :activo

      t.timestamps
    end
  end
end
