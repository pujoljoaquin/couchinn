
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#Couch.find_or_create_by( nombre: "Choza de Cletus", descripcion: "safa", lugar: "villa 31", puntuacion: 1, disponibilidad: true, capacidad: 10)
#puts "Creo users"
puts "Creo los users"
cletus = User.find_by(nombre: 'Cletus')
if cletus.nil?
	cletus = User.create(nombre:"Cletus", apellido:"Medias", nacionalidad:"Argentina", fechaNac:(Date.today - 20.years), nombreUsuario:"cletus", email:"cletus@hotmail.com", masculino: true, esPremium:false, password:"12345678", password_confirmation: "12345678", foto:"http://vignette3.wikia.nocookie.net/lossimpson/images/6/6b/Cletus001.gif/revision/latest?cb=20110106170451&path-prefix=es" )
end
cristina =  User.find_by(nombre: 'Cristina')
if cristina.nil?
	cristina = User.create(nombre:"Cristina", apellido:"Kirchner",fechaNac:(Date.today - 50.years), email:"lacris@hotmail.com", nombreUsuario:"cristina", nacionalidad:"Argentina", masculino: false, esPremium:true,password:"12345678", password_confirmation: "12345678", foto:"http://www.ellitoralconcordia.com/wp-content/uploads/cristina-kirchner20.jpg" )
end
susana = User.find_by(nombre: 'Susana')
if susana.nil?
	susana = User.create(nombre:"Susana", fechaNac:(Date.today - 70.years), password:"12345678", password_confirmation: "12345678", apellido:"Gimenez", email:"lasu@hotmail.com", nombreUsuario:"susana", nacionalidad:"Argentina", masculino: false, esPremium:false, foto:"http://www.fundacionkonex.org/img_curriculums/7957b051f25427efbdb3bba77eef11d15be6.jpg")
end
admin = User.find_by(nombre: 'Administrador')
if admin.nil?
	admin = User.create(nombre:"Administrador", fechaNac:(Date.today - 30.years), password:"12345678", password_confirmation: "12345678", apellido:"Bigbang", email:"admin@hotmail.com", nombreUsuario:"admin", nacionalidad:"Argentina", masculino: true, esPremium:true, esAdmin:true)
end

puts "Creo los Couch_types"
casa = CouchType.find_or_create_by(nombre:"Casa", activo:true)
sillon = CouchType.find_or_create_by(nombre:"Sillon", activo:false)
departamento = CouchType.find_or_create_by(nombre:"Departamento", activo:true)
mansion = CouchType.find_or_create_by(nombre:"Mansion", activo:false)
cabana = CouchType.find_or_create_by(nombre:"Cabaña", activo:true)

puts "Creo los Couches"
Couch.find_or_create_by(couch_type:cabana, nombre: 'Casa en el Lago', descripcion: 'Hermosa vista al lago, muy comoda', lugar: 'Cordoba', user:susana, puntuacion: 4, capacidad: 2, disponibilidad: true, esPremium: false, imagen:"http://thumbs.dreamstime.com/t/casa-por-el-lago-8140207.jpg")
Couch.find_or_create_by(couch_type:casa, nombre: "Choza de Cletus", descripcion: 'Chiquita, especial para juventud que quiera veranear y pasarla bien', lugar: "Villa Gessel", user:cletus, puntuacion: 1, capacidad: 10, disponibilidad: true, esPremium: false, imagen: "http://vignette2.wikia.nocookie.net/simpsons/images/4/44/Cletus_and_Children.jpg/revision/latest?cb=20110105211428")
Couch.find_or_create_by(couch_type:mansion, nombre: "La Casa Rosada", descripcion: "Donde vive la presidente de la nación", lugar: "Capital Federal", puntuacion: 5, user:cristina, disponibilidad: false, capacidad: 1, esPremium: true)
