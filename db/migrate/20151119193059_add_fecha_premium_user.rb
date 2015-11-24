class AddFechaPremiumUser < ActiveRecord::Migration
  def change
  	add_column :users, :fechaPremium, :datetime
  end
end
