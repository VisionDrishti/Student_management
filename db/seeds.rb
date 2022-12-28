# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

student = Student.create(
    first_name:'Rahul',
    last_name:'Verma',
    email:'rahul@bootcamp.com'
)

20.times do |i|
    Student.create(
        puts "Creating Students#{i+1}",
        first_name:"Student#{i+1}",
        last_name:"Lname#{i+1}",
        email:"student#{i+1}@bootcamp.com"
    )
end 


cources.create(name:'java',descreption: 'pending')

cources.create(name:'python',descreption: 'pending')

cources.create(name:'ruby ',descreption: 'pending')

cources.create(name:'rails',descreption: 'pending')
