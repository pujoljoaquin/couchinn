class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_presence_of :nombre, :apellido, :nacimiento, :nacionalidad, :masculino, :nombreUsuario, :message => "Dato obligatorio"
  validates_uniqueness_of :nombreUsuario, :message => "El nombre de usuario ya existe!" 
  has_one :cuentapremiums #, dependent: :destroy
end
