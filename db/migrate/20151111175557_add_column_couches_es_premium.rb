class AddColumnCouchesEsPremium < ActiveRecord::Migration
  def change
  		add_column :couches, :esPremium, :boolean
  end
end
