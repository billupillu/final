# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

City.create(name: "Mumbai")
City.create(name: "Delhi")
City.create(name: "Noida")
City.create(name: "Gurgaon")
City.create(name: "Kolkata")
City.create(name: "Pune")
City.create(name: "Bengaluru")
City.create(name: "Hyderabad")
City.create(name: "Chennai")
City.create(name: "Ahmedabad")
City.create(name: "Surat")
City.create(name: "Visakhapatnam")
City.create(name: "Guwahati")
City.create(name: "Dimapur")
City.create(name: "Agartala")
City.create(name: "Shillong")
City.create(name: "Aizawl")
City.create(name: "Imphal")

Area.create(name: "Sunder Nagar", city_id: 2)
Area.create(name: "Shanti Niketan", city_id: 2)
Area.create(name: "Golf Links", city_id: 2)
Area.create(name: "Dwarka", city_id: 2)
Area.create(name: "Uttam Naga", city_id: 2)
Area.create(name: "Bhiwadi", city_id: 2)
Area.create(name: "Pitampura", city_id: 2)
Area.create(name: "Netaji Subash Palace", city_id: 2)
Area.create(name: "Kashmiri Gate", city_id: 2)
Area.create(name: "Rohini (Rithala to sec-25)", city_id: 2)
Area.create(name: "Rohini (Sec-3 to sec-18)", city_id: 2)
Area.create(name: "Nagloi", city_id: 2)
Area.create(name: "Sarita Vihar", city_id: 2)
Area.create(name: "Dilshad Garden", city_id: 2)
Area.create(name: "Hauz Khaz", city_id: 2)
Area.create(name: "Saket", city_id: 2)
Area.create(name: "Green Park", city_id: 2)

Area.create(name: "Bandra", city_id: 1)
Area.create(name: "Andheri", city_id: 1)
Area.create(name: "Juhu", city_id: 1)
Area.create(name: "South Mumbai", city_id: 1)
Area.create(name: "Powai", city_id: 1)
Area.create(name: "Goregaon", city_id: 1)
Area.create(name: "Navi Mumbai", city_id: 1)
Area.create(name: "Worli", city_id: 1)
Area.create(name: "Lower Parel", city_id: 1)
Area.create(name: "Chembur", city_id: 1)