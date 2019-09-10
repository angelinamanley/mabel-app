# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Species.destroy_all
# Appointment.destroy_all
# Pet.destroy_all
# Owner.destroy_all 
# ServiceProvider.destroy_all


# species = Species.create [
#     { :name => "Dog"},
#     { :name => "Cat"},
#     { :name => "Rabbit"},
#     { :name => "Hamster"},
#     { :name => "Snake"},
#     { :name => "Bird"},
#     { :name => "Fish"}
# ]

# Owner.create(name: "Will", email: "williamdcbush@gmail.com", password_digest: "testing123", location: "Islington")
# Owner.create(name: "Angie", email: "angelinashin@gmail.com", password_digest: "abc123", location: "Lambeth")
# Owner.create(name: "Chris", email: "chrishodge@gmail.com", password_digest: "password1", location: "Camden")
# Owner.create(name: "Erin", email: "erinjohnson@gmail.com", password_digest: "fakepassword", location: "Hackney")

# ServiceProvider.create(company_name:"ABC Pets", location: "Islington", service_types:["sitting", "walking"], rating: 0, bio: "Islington's finest dog walking and sitting service provider.", rates: 20, email: "abcpets@gmail.com", password_digest: "testing123")
# ServiceProvider.create(company_name:"Awesome Pets", location: "Camden", service_types:["training"], rating: 0, bio: "Camden's most awesome dog trainers.", rates: 40, email: "awesomepets@gmail.com", password_digest: "testing123")
# ServiceProvider.create(company_name:"XYZ Pets", location: "Lambeth", service_types:["grooming", "sitting"], rating: 0, bio: "We help groom the prettiest dogs in Lambeth", rates: 50, email: "xyzpets@gmail.com", password_digest: "testing123")

# Pet.create(owner_id: 21, name: "Fido", breed: "Bulldog", species_id: 1,  dob: Date.new(2015, 04, 05), gender: "Male", bio: "I'm a great dog. Please give me cuddles.", pic_url: "https://en.wikipedia.org/wiki/Bulldog#/media/File:Clyde_The_Bulldog.jpg" ) 
# Pet.create(owner_id: 22, name: "Mabel", breed: "Dachshund", species_id: 1, dob: Date.new(2017, 03, 06), gender: "Female", bio: "I'm a sassy little sausage dog.  I will bark at you for treats.", pic_url: "https://www.crowndachshunds.com/wp-content/uploads/2013/03/Elsie-8-weeks-1265-808x1212.jpg" )
# Pet.create(owner_id: 23, name: "Jeff", breed: "Weimaraner", species_id: 1, dob: Date.new(2018, 01, 05), gender: "Male", bio: "I'm handsome dog, majestic and regal", pic_url: "https://www.purina.com.au/-/media/Project/Purina/Main/Breeds/Dog/Dog_Weimaraner_Desktop.jpg" )
# Pet.create(owner_id: 24, name: "Karen", breed: "Ragdoll", species_id: 2, dob: Date.new(2014, 11, 05), gender: "Female", bio: "My addiction to catnip is real.", pic_url: "https://www.catster.com/wp-content/uploads/2018/01/Ragdoll-cat-on-blue-backdrop-.jpg" )

# Appointment.create(pet_id: 5, service_provider_id: 13, service_type: "sitting", date: Date.new(2019, 11, 10), duration: 2, cost: 40, review_score: 0, review_content: "")
# Appointment.create(pet_id: 6, service_provider_id: 14, service_type: "training", date: Date.new(2019, 10, 15), duration: 1, cost: 40, review_score: 0, review_content: "")
# Appointment.create(pet_id: 7, service_provider_id: 15, service_type: "grooming", date: Date.new(2019, 10, 15), duration: 2, cost: 100, review_score: 0, review_content: "")
# Appointment.create(pet_id: 8, service_provider_id: 15, service_type: "sitting", date: Date.new(2019, 11, 16), duration: 48, cost: 2400, review_score: 0, review_content: "")
