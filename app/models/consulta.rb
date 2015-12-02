class Consulta < ActiveRecord::Base
belongs_to :couch
belongs_to :user
default_scope -> { order('"consulta"."fechaPregunta"') }
end
