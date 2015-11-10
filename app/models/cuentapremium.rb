class Cuentapremium < ActiveRecord::Base
belongs_to :user
validates_numericality_of :codigoSeguridad
#FORMATO: NUMNUMNUMNUM-NUMNUMNUMNUM-NUMNUMNUMNUM-NUMNUMNUMNUMvalidates_format_of :numeroTarjeta, with:  
end
