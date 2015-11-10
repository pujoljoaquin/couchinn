class AgregarImagenCouchDefault < ActiveRecord::Migration
  def change
  	change_column :couches, :imagen, :string, :default => "http://static.tumblr.com/5473d74e35693e4a261933b04b13080e/vhrhomj/eAknuqhz5/tumblr_static_7fu7jer965gk4w4cok4ooo4cw_2048_v2.png"
  end
end
