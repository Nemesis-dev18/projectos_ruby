require 'json'

usuarios = [
  {nombre: "Juan", edad: 20},
  {nombre: "Ana", edad: 25}
]

File.write("data.json", usuarios.to_json)

data = JSON.parse(File.read("data.json"), symbolize_names: true)

data.each do |u|
  puts u[:nombre ] , u[:edad ] 
end