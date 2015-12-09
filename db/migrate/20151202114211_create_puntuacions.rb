class CreatePuntuacions < ActiveRecord::Migration
  def change
    create_table :puntuacions do |t|
      t.integer :user_id
      t.integer :couch_id
      t.integer :from
      t.integer :valor

      t.timestamps
    end
  end
end
