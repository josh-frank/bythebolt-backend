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

Listing.create(
    user: User.first,
    title: "39 yds. Kuroki selvedge twill",
    description: "12 oz. left-hand twill, 100% sanforized cotton, from Kuroki Mills of Japan - smooth texture, rich khaki color",
    quantity: 39,
    unit: "yard",
    price: 5.99
)

Listing.create(
    user: User.first,
    title: "Bernina 117 sewing machine - great condition",
    description: "Beautiful Swiss-made Bernina 117K zig-zag sewing machine. Looks great for 80 years old, sews beautifully, in original wood carrying suitcase. Includes original tin, feet, some original accessories including screwdriver and buttonhole knife and original bobbin case. Cash on delivery only",
    quantity: 1,
    price: 1200
)

Listing.create(
    user: User.first,
    title: "Wilkinson teflon-coated fabric shears 10cm - like new",
    description: "Great condition, no cracks or paint chips, cuts like new. 10\" length, 4.75\" cut length, weighs ~1lb. Made in Sheffield, England with hot-forged high-carbon tool steel, highly durable",
    quantity: 1,
    price: 79
)

done_seeding = Time.now

puts "🌱🌱🌱🌱🌱🌱🌱 Seeded: #{ done_seeding - started_seeding } secs. 🌱🌱🌱🌱🌱🌱🌱"