started_seeding = Time.now

josh = User.create(
    username: "josh",
    password: "123",
    avatar_url: "https://res.cloudinary.com/bythebolt/image/upload/v1616078037/avatars/josh_avatar.jpg",
    email: "EurosewUSA@gmail.com",
    bio: "Nitwit oddment blubber tweak",
    location: [ 40.76547518458087, -73.98536808381324 ]
)

fabric = Category.create( name: "Fabric" )
yarn = Category.create( name: "Yarn" )
thread = Category.create( name: "Thread" )
notions = Category.create( name: "Notions" )
books = Category.create( name: "Books/Magazines" )
patterns = Category.create( name: "Patterns" )
machines = Category.create( name: "Machines" )
services = Category.create( name: "Services" )

UserCategory.create( user: josh, category: fabric )
UserCategory.create( user: josh, category: thread )

# twill = Listing.create(
#     user: josh,
#     title: "39 yds. Kuroki selvedge twill",
#     description: "12 oz. left-hand twill, 100% sanforized cotton, from Kuroki Mills of Japan - smooth texture, rich khaki color",
#     quantity: 39,
#     unit: "yard",
#     price: 5.99
# )
# ListingCategory.create( listing: twill, category: fabric )

# bernina = Listing.create(
#     user: josh,
#     title: "Bernina 117 sewing machine - great condition",
#     description: "Beautiful Swiss-made Bernina 117K zig-zag sewing machine. Looks great for 80 years old, sews beautifully, in original wood carrying suitcase. Includes original tin, feet, some original accessories including screwdriver and buttonhole knife and original bobbin case. Cash on delivery only",
#     quantity: 1,
#     price: 1200
# )
# ListingCategory.create( listing: bernina, category: machines )

# shears = Listing.create(
#     user: josh,
#     title: "Wilkinson teflon-coated fabric shears 10cm - like new",
#     description: "Great condition, no cracks or paint chips, cuts like new. 10\" length, 4.75\" cut length, weighs ~1lb. Made in Sheffield, England with hot-forged high-carbon tool steel, highly durable",
#     quantity: 1,
#     price: 79
# )
# ListingCategory.create( listing: shears, category: notions )

done_seeding = Time.now

puts "🌱🌱🌱🌱🌱🌱🌱 Seeded: #{ done_seeding - started_seeding } secs. 🌱🌱🌱🌱🌱🌱🌱"