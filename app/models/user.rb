class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :couches, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_presence_of :nombre, :apellido, :fechaNac, :nacionalidad, :nombreUsuario, :message => "Dato obligatorio"
  validates_uniqueness_of :nombreUsuario, :message => "El nombre de usuario ya existe!" 
  validate :validarFecha 

  def validarFecha
  	fechaMenor = Date.today - 18.years
  	if (self.fechaNac > fechaMenor)
  		errors.add(:fechaNac, "Debe ser mayor de 18 años")
  	end
  end	
end
