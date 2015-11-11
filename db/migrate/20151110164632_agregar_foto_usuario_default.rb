class AgregarFotoUsuarioDefault < ActiveRecord::Migration
  def change
  	change_column :users, :foto, :string, :default => "http://icons.iconarchive.com/icons/custom-icon-design/pretty-office-8/256/User-green-icon.png"
  end
end
