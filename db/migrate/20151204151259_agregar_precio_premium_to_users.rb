class AgregarPrecioPremiumToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :precioPremium, :integer
  end
end
