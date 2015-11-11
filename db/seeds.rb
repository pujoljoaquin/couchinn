
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
User.find_or_create_by(nombre:"Cletus", apellido:"Medias", email:"cletus@hotmail.com", nombreUsuario:"cletus", nacionalidad:"Argentina", masculino: true, esPremium:false, foto:"http://vignette3.wikia.nocookie.net/lossimpson/images/6/6b/Cletus001.gif/revision/latest?cb=20110106170451&path-prefix=es" )
User.find_or_create_by(nombre:"Cristina", apellido:"Kirchner", email:"lacris@hotmail.com", nombreUsuario:"cristina", nacionalidad:"Argentina", masculino: false, esPremium:true, foto:"http://www.ellitoralconcordia.com/wp-content/uploads/cristina-kirchner20.jpg" )
User.find_or_create_by(nombre:"Susana", password:"12345678", password_confirmation: "12345678", apellido:"Gimenez", email:"lasu@hotmail.com", nombreUsuario:"susana", nacionalidad:"Argentina", masculino: false, esPremium:false, foto:"http://www.fundacionkonex.org/img_curriculums/7957b051f25427efbdb3bba77eef11d15be6.jpg")

puts "Creo los Couch_types"
CouchType.find_or_create_by(nombre:"Casa", activo:true)
CouchType.find_or_create_by(nombre:"Sillon", activo:false)
CouchType.find_or_create_by(nombre:"Departamento", activo:true)
CouchType.find_or_create_by(nombre:"Mansion", activo:false)
CouchType.find_or_create_by(nombre:"Cabaña", activo:true)

puts "Creo los Couches"
Couch.find_or_create_by(nombre: 'Casa en el Lago', descripcion: 'Hermosa vista al lago, muy comoda', lugar: 'Cordoba', user_id:1, puntuacion: 4, capacidad: 2, disponibilidad: true, imagen:"http://thumbs.dreamstime.com/t/casa-por-el-lago-8140207.jpg")
Couch.find_or_create_by(nombre: "Choza de Cletus", descripcion: 'Safa, con el plan trabajar re garpa todo, papa', lugar: "Villa 31", user_id: 1, puntuacion: 1, capacidad: 10, disponibilidad: true, imagen: "http://vignette2.wikia.nocookie.net/simpsons/images/4/44/Cletus_and_Children.jpg/revision/latest?cb=20110105211428")
Couch.find_or_create_by( nombre: "La Casa Rosada", descripcion: "Donde vive la presi wacho", lugar: "Capital Federal", puntuacion: 5, user_id: 1, disponibilidad: false, capacidad: 1)
