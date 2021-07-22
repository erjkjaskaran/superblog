# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
label=['a','b','c']
state=['State A','State B','State C']
@states=[label,state]
@states.each_with_index do |s,index|
	s.each do 
  State.find_or_create_by(label: @states[index][], state_name: @states[1][index], country: "USA")
end