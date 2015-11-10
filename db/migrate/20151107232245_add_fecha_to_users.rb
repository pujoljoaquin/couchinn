class AddFechaToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nacimiento, :Time
  end
end
