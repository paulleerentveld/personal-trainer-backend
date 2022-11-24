# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Instructor.create!(firstname: "Joe", lastname: "Instructor", email: "joe@email.com", mobile: "0412345673")

#instructor = Instructor.all.first

#Client.create!(firstname: "Bob", lastname: "Client", email: "bob@email.com", mobile: "0411223344", sex: "Male", weight: 100, height: 180, dob: "2000-01-01", instructor: instructor)

# Exercise.create!(name: "exercise1", description: "This is the description", image: "Imagesdsfd.jpg", url: "http://asdasd.com/asdasd")
# Exercise.create!(name: "exercise2", description: "This is the description", image: "Imagesdsfd.jpg", url: "http://asdasd.com/asdasd")
# Exercise.create!(name: "exercise3", description: "This is the description", image: "Imagesdsfd.jpg", url: "http://asdasd.com/asdasd")

# Workout.create!(name: "workouttest1", workouttype: "Strength", exercise_ids: [1,2,3])
# Workout.create!(name: "workouttest2", workouttype: "BodyBuilding", exercise_ids: [1,3])

# User.create!(usertype: "trainer", firstname: "Kim", lastname: "Trainer", email: "test@veldnet.com.au", mobile: "0412345678", height: "160", weight: "60", sex: "Female", dob: "2000-01-01", authlinked: true)
# User.create!(usertype: "client", firstname: "Col", lastname: "Client", email: "col@gmail.com", mobile: "0412345679", height: "180", weight: "90", sex: "Male", dob: "2000-01-01", authlinked: false)
# User.create!(usertype: "client", firstname: "Tim", lastname: "Client", email: "tim@gmail.com", mobile: "0412345674", height: "170", weight: "80", sex: "Male", dob: "2000-01-01", authlinked: false)
# User.create!(usertype: "client", firstname: "Ben", lastname: "Client", email: "ben@gmail.com", mobile: "0412345677", height: "190", weight: "100", sex: "Male", dob: "2000-01-01", authlinked: false)

ClientWorkout.create!(user_id: "2", workout_id: "1", startdate:"2022-11-23" , enddate:"2022-11-23" , completed: false)



