started_seeding = Time.now

User.create(
    username: "josh",
    password: "123",
    avatar_url: "https://res.cloudinary.com/bythebolt/image/upload/v1616078037/avatars/josh_avatar.jpg",
    email: "EurosewUSA@gmail.com",
    bio: "Nitwit oddment blubber tweak",
    location: [ 40.76547518458087, -73.98536808381324 ]
)

Category.create( name: "Fabric" )
Category.create( name: "Yarn" )
Category.create( name: "Thread" )
Category.create( name: "Notions" )
Category.create( name: "Books/Magazines" )
Category.create( name: "Patterns" )
Category.create( name: "Machines" )
Category.create( name: "Services" )

UserCategory.create( user: User.first, category: Category.first )
UserCategory.create( user: User.first, category: Category.third )

done_seeding = Time.now

puts "🌱🌱🌱🌱🌱🌱🌱 Seeded: #{ done_seeding - started_seeding } secs. 🌱🌱🌱🌱🌱🌱🌱"