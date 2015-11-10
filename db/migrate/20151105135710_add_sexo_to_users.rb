class AddSexoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :masculino, :boolean, default: false
  end
end
