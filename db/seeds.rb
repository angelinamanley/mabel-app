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


species = Species.create [
    { :name => "Dog"},
    { :name => "Cat"},
    { :name => "Rabbit"},
    { :name => "Hamster"},
    { :name => "Snake"},
    { :name => "Bird"},
    { :name => "Fish"}
]

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

# Appointment.create(pet_id: 5, service_provider_id: 13, service_type: "sitting", date: Date.new(2019, 11, 10), duration: 2, cost: 40, review_score: 0, review_content: ")
# Appointment.create(pet_id: 6, service_provider_id: 14, service_type: "training", date: Date.new(2019, 10, 15), duration: 1, cost: 40, review_score: 0, review_content: ")
# Appointment.create(pet_id: 7, service_provider_id: 15, service_type: "grooming", date: Date.new(2019, 10, 15), duration: 2, cost: 100, review_score: 0, review_content: ")
# Appointment.create(pet_id: 8, service_provider_id: 15, service_type: "sitting", date: Date.new(2019, 11, 16), duration: 48, cost: 2400, review_score: 0, review_content: ")


# ServiceProvider.create(company_name:"ABC Pets", location: "Islington", service_types:["sitting", "walking"], rating: 0, bio: "Islington's finest dog walking and sitting service provider.", rates: 20, email: "abcpets@gmail.com", password_digest: "testing123")

# ServiceProvider.create(company_name:"A Plus Pet Care", location: "Kensington", service_types:["Walking", "Playing", "Feeding"], rating: 0, bio: "We understand your pooch is a precious family member, so when you entrust their pet care needs to us we treat them like a member of our family. We have built our reputation on providing the gentlest, safest and kindest of pet care services.", rates: 50, email: "apluspetcare@gmail.com", password_digest: "testing123")

# ServiceProvider.create(company_name:"Furrever Young", location: "Hammersmith", service_types:["Grooming"], rating: 0, bio: "A back-to-basics, no-nonsense salon where groomer and dog-whisperer Antonio works wonders on messy pets with all the cutting skills of Vidal Sassoon.", rates: 30, email: "furreveryoung@gmail.com", password_digest: "testing123")

# ServiceProvider.create(company_name:"SaintBarx", location: "Wandsworth", service_types:["Walking", "Playing", "Feeding"], rating: 0, bio: "Our pets are so deserving of our love and care. They are truly family. But you can't always be there to give them all the attention they crave. They all need socialisation, love, exercise and fun to keep their minds and joints sharp and their temperament in check. We're pet lovers and owners, too. We consider that we have the best job in the world! And we understand that today's rush and go whirlwind lifestyles can leave our little kitty cats and dog friends with the short end of the stick, as it were.", rates: 20, email: "saintbarxx@gmail.com", password_digest: "testing123")

# ServiceProvider.create(company_name:"Pet Care First", location: "Southwark", service_types:["Walking", "Playing", "Feeding"], rating: 0, bio: "Our professional dog walkers offer a flexible service to work around your lifestyle. We can provide daily or occasional walks - whatever works best for you.
# ", rates: 20, email: "petcarefirst@gmail.com", password_digest: "testing123")

# ServiceProvider.create(company_name:"Ready Set Pet", location: "Camden", service_types:["Training"], rating: 0, bio: "Based in London, Ready Set Pet provides positive, modern, ethical dog training with an emphasis on behaviour.", rates: 50, email: "readysetpet@gmail.com", password_digest: "testing123")

# ServiceProvider.create(company_name:"Luxe Pet Spa ", location: "Islington", service_types:["Massage", "Acupuncture", "Aromatherapy"], rating: 0, bio: "We provide the ultimate luxury for your pets.  Our trained spa technicians will ensure your pet has the most luxurious, relaxing, and well-deserved spa day.", rates: 100, email: "luxepetspa@gmail.com", password_digest: "testing123")

# ServiceProvider.create(company_name:"Heroic Tails", location: "Lambeth", service_types:["Transport"], rating: 0, bio: "Let Heroic Tails take care of your pet on those journeys to vets, grooming salons, kennels and many other visits.", rates: 30, email: "heroictails@gmail.com", password_digest: "testing123")

# ServiceProvider.create(company_name:"Pets Go Go", location: "Hackney", service_types:["Transport"], rating: 0, bio: "Our pet taxi service is ideal for pet owners who do not have a suitable method of transport and need to take their pets to the vets or any other destination.Your pet will be transported in a van, fully fitted with secure cages, ensuring maximum safety throughout the journey.", rates: 25, email: "petsgogo@gmail.com", password_digest: "testing123")

# ServiceProvider.create(company_name:"Pets on Wheels", location: "Southwark", service_types:["Transport"], rating: 0, bio: " Pets On Wheels offers you pet transport to take your dog, cat, rabbit or other small animals to the vets, grooming parlour or even for when you move home!", rates: 40, email: "petsonwheels@gmail.com", password_digest: "testing123")

# ServiceProvider.create(company_name:"Holistic Pet Healing Center", location: "Kensington", service_types:["Reiki Healing", "Acupuncture"], rating: 0, bio: "Progressive and forward thinking humans all over the world are fans of the practice of Reiki, a system of holistic energy healing. Within the last decade, however, the use of animal Reiki among animal rescues, behaviorists, pet owners, and veterinarians has skyrocketed. Holistic Pet Healing Center will take your pet and channel its realign its chakra to be the best pet it can be.", rates: 80, email: "hphckensington@gmail.com", password_digest: "testing123")

# ServiceProvider.create(company_name:"Woof, Meow, & Namaste", location: "Chelsea", service_types:["Yoga"], rating: 0, bio: "Let your pet find inner peace at Woof, Meow, and Namaste by engaging in a relaxing 45 minute yoga session followed by a 15 minute meditation session where they not only get in tune with their bodies, but find tranquility and enlightenment in their minds.", rates: 50, email: "woofmeownamastechelsea@gmail.com", password_digest: "testing123")

# ServiceProvider.create(company_name:"Pet Chakra Zone", location: "Chelsea", service_types:["Yoga", "Reiki"], rating: 0, bio: "Pets have Chakras too.    Misaligned chakras will cause all sorts of disarray in pets’ lives.   Ever had a parrot talking itself to exhaustion?  His inner chi may be in havoc!  A mopey dog with no desire to eat?  Let us use our healing powers so that your pets’ inner chi can flow freely once more.  Happy Chis lead to happy pets!!  After a Reiki session, come join us for pet yoga!  We offer package rates. ", rates: 50, email: "woofmeownamastechelsea@gmail.com", password_digest: "testing123")

# ServiceProvider.create(company_name:"The Real Pet Yoga", location: "Mayfair", service_types:["Yoga"], rating: 0, bio: "What is Real Pet Yoga:  Pet Yoga is a programme of training. It ultimately involves teaching pets to express and hold specific body postures, expressions and actions that stimulate the parasympathetic nervous system and help them to become or remain calm.  Come visit our studio in Mayfair to learn more!", rates: 60, email: "TRPY@gmail.com", password_digest: "testing123")

# ServiceProvider.create(company_name:"Purrfect Petcare", location: "Hackney", service_types:["Walking", "Playing", "Feeding" ], rating: 0, bio: "Fully insured, pet first aid certified, criminal record checked, professional dog walking and pet care service in North London.", rates: 20, email: "purrfectpetcare@gmail.com", password_digest: "testing123")

# ServiceProvider.create(company_name:"Physio for Pets", location: "Hammersmith", service_types:["Physio"], rating: 0, bio: "Your pet is part of the family and of course you want the best possible quality of life – a life free from pain and discomfort. But pets run, jump and bound around. They face accidents and injuries. Wear and tear on joints, the stresses and strains of an active life and age-related problems can all affect dogs and cats just as much as humans. Fortunately animals, like people, respond well to physiotherapy.", rates: 100, email: "physioforpets@gmail.com", password_digest: "testing123")

# ServiceProvider.create(company_name:"Apex Animal Physio Centre", location: "Farringdon", service_types:["Physio" ], rating: 0, bio: "Apex Pet Physio is a state-of-the-art clinic specialising in orthopaedic and neurological problems in dogs and cats. The dedicated team of vets and nurses offer a friendly, caring service. The team are all highly qualified professionals with additional qualifications in orthopaedics, physiotherapy, rehabilitation and nutrition. We offer a complete service from diagnosis to treatment, nutritional advice, follow-up rehabilitation and ongoing monitoring.", rates: 150, email: "apexanimalphysico@gmail.com", password_digest: "testing123")


# ServiceProvider.create(company_name:"Groom City", location: "Notting Hill", service_types:["Grooming"], rating: 0, bio: "Groom City is  London’s premier dog grooming spa parlour, offering many services to suit most dogs needs. Our highly trained, City & Guilds qualified, award winning grooming staff are focused on animal welfare to deliver the best possible expert quality service in a safe and relaxing environment free from cages and drying cabinets. We only take the best possible care of your dog using top of the range products and equipments in our unrivalled Notting Hill dog grooming salons.", rates: 40, email: "groomcity@gmail.com", password_digest: "testing123")

# ServiceProvider.create(company_name:"Sniffles Spa", location: "Hampstead", service_types:["Grooming", "Massage", "Aromatherapy"], rating: 0, bio: "It started when Donika, a trained accountant, went into the shop to help her sister, who was bookkeeping for the company. She only spent a day in there, but knew that this was what she wanted to do for a living. And when the kids met some of the four-pawed guests, the whole family was hooked. So we jumped at the opportunity to buy Sniffles and turn it into the family business we'd always dreamed of.", rates: 70, email: "snifflesspa@gmail.com", password_digest: "testing123")

# ServiceProvider.create(company_name:"Zen Pets Spa", location: "Fulham", service_types:["Grooming", "Massage", "Aromatherapy"], rating: 0, bio: "Treat your pet to the ultimate pampering and grooming experience at our cosy spa in Fulham, London which is situated on the most popular part of Fulham Road. Selection of bespoke pet-grooming services and indulgent spa treatments to ensure that your precious companion looks and feels its very best. Catering for most pets – from kitten or puppy to dog, cat, tortoise, rabbit or hamster. They are all welcome here!", rates: 60, email: "zenpetsspa@gmail.com", password_digest: "testing123")

# ServiceProvider.create(company_name:"The Pet Spa ", location: "Battersea", service_types:["Grooming", "Massage", "Aromatherapy"], rating: 0, bio: "The Pet Spa in Battersea offers pets the chance to luxuriate in crème de la crème of pampering experiences. With a range of treatments to rival any sumptuous spa, including blueberry and vanilla facials to oatmeal healing baths and beyond, this stylist retreat will give your pet their undivided attention to ensure they leave feeling nurtured and indulged.", rates: 50, email: "thepetspa@gmail.com", password_digest: "testing123")

# ServiceProvider.create(company_name:"Never Lonely Pets", location: "Brixton", service_types:["Walking", "Playing", "Feeding"], rating: 0, bio:  "Worried about your dog home alone all day? Book a background-checked walker and get a GPS map of their walk.", rates: 20, email: "neverlonelypets@gmail.com", password_digest: "testing123")

# ServiceProvider.create(company_name:"Trust Pet Care", location: "Vauxhall", service_types:["Walking", "Playing", "Feeding"], rating: 0, bio:  "Trust Pet Care ensures your pet will be safe and taken care of.   Don’t feel bad about leaving them alone, we’ll be there.  TRUST US! ", rates: 20, email: "trustpetcare@gmail.com", password_digest: "testing123")

# ServiceProvider.create(company_name:"We Love Pets", location: "Bethnal Green", service_types:["Walking", "Playing", "Feeding"], rating: 0, bio:  "We Love Pets is an award winning dog walking and pet care business operating across the UK and has looked after thousands of dogs, cats, ponies, small animals and exotic pets since it’s beginnings in 2007.  At We Love Pets we promise to walk your dogs in small groups, with a fully insured, police checked and pet first-aid trained member of staff. We are committed to providing fun, safe dog walks and exceptional care for your pets, and we will never make a mess or tread mud in your home, whatever the weather outside.", rates: 25, email: "welovepts@gmail.com", password_digest: "testing123")
