class Consulta < ActiveRecord::Base
belongs_to :couch
default_scope -> { order('"consulta"."fechaPregunta"') }
end
