started_seeding = Time.now

fabric = Category.create( name: "Fabric" )
yarn = Category.create( name: "Yarn" )
thread = Category.create( name: "Thread" )
notions = Category.create( name: "Notions" )
books = Category.create( name: "Books/Magazines" )
patterns = Category.create( name: "Patterns" )
machines = Category.create( name: "Machines" )
services = Category.create( name: "Services" )

josh = User.create(
    username: "josh",
    password: "123",
    avatar_url: "https://res.cloudinary.com/bythebolt/image/upload/v1616078037/avatars/josh_avatar.jpg",
    email: "EurosewUSA@gmail.com",
    bio: "Nitwit oddment blubber tweak",
    location: [ 40.81962632696764, -73.98083585780115 ]
)
UserCategory.create( user: josh, category: fabric )
UserCategory.create( user: josh, category: thread )

elna = User.create(
    username: "elna",
    password: "123",
    avatar_url: "http://res.cloudinary.com/bythebolt/image/upload/v1616291640/avatars/elna_avatar.png",
    email: "info@elnagrasshopper.com",
    bio: "Pack my box with five dozen liquor jugs",
    location: [ 40.76547518458087, -73.98536808381324 ]
)
UserCategory.create( user: elna, category: yarn )

twill = Listing.create(
    user: josh,
    title: "Kuroki selvedge twill BTY",
    description: "12 oz. left-hand twill, 100% sanforized cotton, from Kuroki Mills of Japan - smooth texture, rich khaki color",
    price: 11.99,
    quantity: 39,
    unit: "yard",
    image_urls: [
        "http://res.cloudinary.com/bythebolt/image/upload/v1616290192/listings/1/listing_1_image_0.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616290193/listings/1/listing_1_image_1.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616290193/listings/1/listing_1_image_2.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616290195/listings/1/listing_1_image_3.jpg"
    ]
)
ListingCategory.create( listing: twill, category: fabric )

bernina = Listing.create(
    user: josh,
    title: "Bernina 117 sewing machine - great condition",
    description: "Beautiful Swiss-made Bernina 117K zig-zag sewing machine. Looks great for 80 years old, sews beautifully, in original wood carrying suitcase. Includes original tin, feet, some original accessories including screwdriver and buttonhole knife and original bobbin case. Cash on local pickup only",
    price: 1200,
    quantity: 1,
    image_urls: [
        "http://res.cloudinary.com/bythebolt/image/upload/v1616290656/listings/2/listing_2_image_0.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616290656/listings/2/listing_2_image_1.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616290657/listings/2/listing_2_image_2.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616290658/listings/2/listing_2_image_3.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616290659/listings/2/listing_2_image_4.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616290659/listings/2/listing_2_image_5.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616290661/listings/2/listing_2_image_6.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616290662/listings/2/listing_2_image_7.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616290663/listings/2/listing_2_image_8.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616290664/listings/2/listing_2_image_9.jpg"
    ]
)
bernina.update( created_at: bernina.created_at - 14.days )
ListingCategory.create( listing: bernina, category: machines )
FavoriteListing.create( user: elna, listing: bernina )

shears = Listing.create(
    user: josh,
    title: "Wilkinson teflon-coated fabric shears 10cm - like new",
    description: "Great condition, no cracks or paint chips, cuts like new. 10\" length, 4.75\" cut length, weighs ~1lb. Made in Sheffield, England with hot-forged high-carbon tool steel, highly durable",
    price: 79,
    quantity: 1,
    image_urls: [
        "http://res.cloudinary.com/bythebolt/image/upload/v1616291054/listings/3/listing_3_image_0.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616291054/listings/3/listing_3_image_1.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616291055/listings/3/listing_3_image_2.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616291056/listings/3/listing_3_image_3.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616291056/listings/3/listing_3_image_4.jpg"
    ]
)
shears.update( created_at: shears.created_at - 7.days )
ListingCategory.create( listing: shears, category: notions )
FavoriteListing.create( user: elna, listing: shears )

strommen = Listing.create(
    user: elna,
    title: "Strømmen Bruk Hamar cantilevered sewing box",
    description: "This beautiful mid-century modern oak sewing box was made in Norway in the 1950s. It has normal scratches and signs of wear but it is structurally sound and very complete with no broken parts. Sold empty with no accessories.",
    price: 150,
    quantity: 1,
    image_urls: [
        "http://res.cloudinary.com/bythebolt/image/upload/v1616381194/listings/4/listing_4_image_0.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616381195/listings/4/listing_4_image_1.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616381196/listings/4/listing_4_image_2.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616381196/listings/4/listing_4_image_3.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616381197/listings/4/listing_4_image_4.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616381198/listings/4/listing_4_image_5.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616381199/listings/4/listing_4_image_6.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616381200/listings/4/listing_4_image_7.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616381200/listings/4/listing_4_image_8.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616381201/listings/4/listing_4_image_9.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616381202/listings/4/listing_4_image_10.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616381203/listings/4/listing_4_image_11.jpg"
    ]
)
ListingCategory.create( listing: strommen, category: notions )
strommen.update( created_at: strommen.created_at - 30.days )

done_seeding = Time.now

puts "🧵🧵🧵🧵🧵🧵 Seeded: #{ done_seeding - started_seeding } secs. 🧵🧵🧵🧵🧵🧵"
