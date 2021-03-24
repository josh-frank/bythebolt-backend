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
    avatar_url: "http://res.cloudinary.com/bythebolt/image/upload/v1616078037/avatars/josh_avatar.jpg",
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

diana = User.create(
    username: "diana",
    password: "123",
    avatar_url: "http://res.cloudinary.com/bythebolt/image/upload/v1616533012/avatars/diana_avatar.jpg",
    email: "secretstar1312@gmail.com",
    bio: "I haven't been this scared in a long time, I am so unprepared so here's my valentine",
    location: [ 39.30563403344324, -76.71192094450818 ]
)
UserCategory.create( user: diana, category: books )

rosa = User.create(
    username: "rosa",
    password: "123",
    avatar_url: "http://res.cloudinary.com/bythebolt/image/upload/v1616548570/avatars/rosa_avatar.jpg",
    email: "mayin1927@gmail.com",
    bio: "Si se arregla su sallo, le durara un año - si lo arregla otra vez, te durara un mes",
    location: [ 40.98642677709743,-74.18780677127218 ]
)
UserCategory.create( user: rosa, category: yarn )

laura = User.create(
    username: "laura",
    password: "123",
    avatar_url: "http://res.cloudinary.com/bythebolt/image/upload/v1616556145/avatars/laura_avatar.jpg",
    email: "lrfrank55@earthlink.net",
    bio: "Do something for yourself today",
    location: [ 40.47096956250373,-74.48255028961275 ]
)
UserCategory.create( user: laura, category: yarn )
UserCategory.create( user: laura, category: notions )
UserCategory.create( user: laura, category: books )

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
strommen.update( created_at: strommen.created_at - 30.days )
ListingCategory.create( listing: strommen, category: notions )

voile = Listing.create(
    user: elna,
    title: "50yd bolt of black organic cotton voile",
    description: "50 yards left on a 60-yard bolt of organic cotton voile. 58\" wide. Like new! Stored in a smoke and pet-free home! Shipping available with USPS Parcel Select Ground - please inquire for details",
    price: 200,
    quantity: 1,
    unit: "bolt",
    image_urls: [
        "http://res.cloudinary.com/bythebolt/image/upload/v1616519601/listings/5/listing_5_image_0.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616519601/listings/5/listing_5_image_1.jpg"
    ]
)
ListingCategory.create( listing: voile, category: fabric )

dress_form = Listing.create(
    user: diana,
    title: "Antique dress form",
    description: "Antique dress form, women's size 10. Heavily used. Form is stained: needs new body form cover. Base needs to be painted",
    price: 75,
    quantity: 1,
    image_urls: [
        "http://res.cloudinary.com/bythebolt/image/upload/v1616533383/listings/6/listing_6_image_0.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616533383/listings/6/listing_6_image_1.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616533383/listings/6/listing_6_image_2.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616533383/listings/6/listing_6_image_3.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616533383/listings/6/listing_6_image_4.jpg",
    ]
)
dress_form.update( created_at: dress_form.created_at - 60.days )
ListingCategory.create( listing: dress_form, category: notions )

rural_pa_clothing = Listing.create(
    user: josh,
    title: "Rural Pennsylvania Clothing - 18th century American sewing patterns - extremely rare",
    description: "THE BOOK on colonial clothing!! There is no more authoritative resource on 18th century garments for cosplayers, historical re-enactors, costume designers, etc. One of just 2000 casebound copies from the original 1976 print run.  Carefully researched, referenced, very well written and illustrated. Book and spine are in great condition! Contact me with any questions!!",
    price: 400,
    quantity: 1,
    image_urls: [
        "http://res.cloudinary.com/bythebolt/image/upload/v1616535879/listings/7/listing_7_image_0.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616535880/listings/7/listing_7_image_1.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616535881/listings/7/listing_7_image_2.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616535881/listings/7/listing_7_image_3.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616535882/listings/7/listing_7_image_4.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616535883/listings/7/listing_7_image_5.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616535884/listings/7/listing_7_image_6.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616535885/listings/7/listing_7_image_7.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616535888/listings/7/listing_7_image_8.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616535889/listings/7/listing_7_image_9.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616535890/listings/7/listing_7_image_10.jpg"
    ]
)
rural_pa_clothing.update( created_at: rural_pa_clothing.created_at - 2.days )
ListingCategory.create( listing: rural_pa_clothing, category: books )
ListingCategory.create( listing: rural_pa_clothing, category: patterns )

caron_yarn = Listing.create(
    user: diana,
    title: "CARON \"SIMPLY SOFT\" YARN 10 SKEINS",
    description: "10 skeins in the following colors: 2 county blue, 3 powder blue, 3 soft blue, 1 off white, 1 blueberry\nAll 6oz weight\n$7 each or $60 for the lot",
    price: 7,
    quantity: 10,
    unit: "skein",
    image_urls: [
        "http://res.cloudinary.com/bythebolt/image/upload/v1616544772/listings/8/listing_8_image_0.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616544772/listings/8/listing_8_image_1.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616544772/listings/8/listing_8_image_2.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616544772/listings/8/listing_8_image_3.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616544772/listings/8/listing_8_image_4.jpg"
    ]
)
ListingCategory.create( listing: caron_yarn, category: yarn )

yarn_lot = Listing.create(
    user: diana,
    title: "HUGE Lot of Yarn & VINTAGE Knitting Pattern Books",
    description: "NEW & USED - HUGE bundle of various yarn and VINTAGE pattern books dating back to 1985-1997 - GRAB IT ALL FOR A FAIR PRICE‼️",
    price: 40,
    quantity: 1,
    image_urls: [
        "http://res.cloudinary.com/bythebolt/image/upload/v1616547840/listings/9/listing_9_image_0.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616547840/listings/9/listing_9_image_1.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616547840/listings/9/listing_9_image_2.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616547840/listings/9/listing_9_image_3.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616547840/listings/9/listing_9_image_4.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616547840/listings/9/listing_9_image_5.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616547840/listings/9/listing_9_image_6.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616547840/listings/9/listing_9_image_7.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616547840/listings/9/listing_9_image_8.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616547840/listings/9/listing_9_image_9.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616547840/listings/9/listing_9_image_10.jpg"
    ]
)
yarn_lot.update( created_at: yarn_lot.created_at - 40.days )
ListingCategory.create( listing: yarn_lot, category: yarn )
ListingCategory.create( listing: yarn_lot, category: patterns )

reliable_iron = Listing.create(
    user: rosa,
    title: "Reliable Steam Boiler W/Iron",
    description: "Professional Reliable ironing system made in Italy - produces quality, dry, pressurized steam which is the fastest and most efficient way of ironing",
    price: 350,
    quantity: 1,
    image_urls: [
        "http://res.cloudinary.com/bythebolt/image/upload/v1616549181/listings/10/listing_10_image_0.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616549181/listings/10/listing_10_image_1.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616549181/listings/10/listing_10_image_2.jpg"
    ]
)
reliable_iron.update( created_at: reliable_iron.created_at - 40.days )
ListingCategory.create( listing: reliable_iron, category: machines )

passap = Listing.create(
    user: rosa,
    title: "PASSAP KNITTING MACHINE, 4 COLOR DUOMATIC 80",
    description: "Swiss-made Passap Duomatic 80. Dual-carraige knitting machine with electronic color-changing attachments. Very robust! Recently serviced by professional repairman! Local pickup only in North NJ",
    price: 800,
    quantity: 1,
    image_urls: [
        "http://res.cloudinary.com/bythebolt/image/upload/v1616549807/listings/11/listing_11_image_0.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616549807/listings/11/listing_11_image_1.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616549807/listings/11/listing_11_image_2.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616549807/listings/11/listing_11_image_3.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616549807/listings/11/listing_11_image_4.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616549807/listings/11/listing_11_image_5.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616549807/listings/11/listing_11_image_6.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616549807/listings/11/listing_11_image_7.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616549807/listings/11/listing_11_image_8.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616549807/listings/11/listing_11_image_9.jpg"
    ]
)
passap.update( created_at: passap.created_at - 80.days )
ListingCategory.create( listing: passap, category: machines )

featherweight = Listing.create(
    user: josh,
    title: "Singer Featherweight sewing machine",
    description: "Portable Singer 221 \"Featherweight\" sewing machine from the 50s. Very complete with carrying case/tray and original foot control. Both recently serviced with new lightbulbs. Bobbins & bobbin cases are not original. PRICE IS FIRM",
    price: 375,
    quantity: 1,
    image_urls: [
        "http://res.cloudinary.com/bythebolt/image/upload/v1616555064/listings/12/listing_12_image_0.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616555064/listings/12/listing_12_image_0.jpg"
    ]
)
featherweight.update( created_at: featherweight.created_at - 4.days )
ListingCategory.create( listing: featherweight, category: machines )

amish_winder = Listing.create(
    user: laura,
    title: "Antique Amish Yarn Winder",
    description: "Traditional Amish style wooden yarn winder. This a treasured heirloom from a grandmother who grew up in Amish country who loved knitting and needlepoint. Also called a yarn skeiner, this free-standing tool is used to help wind yarn from a hank or skein into a neat yarn cake or ball.",
    price: 149,
    quantity: 1,
    image_urls: [
        "http://res.cloudinary.com/bythebolt/image/upload/v1616556510/listings/13/listing_13_image_0.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616556510/listings/13/listing_13_image_1.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616556510/listings/13/listing_13_image_2.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616556510/listings/13/listing_13_image_3.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616556510/listings/13/listing_13_image_4.jpg"
    ]
)
ListingCategory.create( listing: amish_winder, category: notions )

bates_needles = Listing.create(
    user: laura,
    title: "Knitting needles",
    description: "Susan Bates Quicksilver needles, opened but never used. Size 15 US (10.00 mm), 10 inch/25 cm. Contactless pickup",
    price: 5,
    quantity: 1,
    image_urls: [
        "http://res.cloudinary.com/bythebolt/image/upload/v1616557451/listings/14/listing_14_image_0.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616557451/listings/14/listing_14_image_1.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616557451/listings/14/listing_14_image_2.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616557451/listings/14/listing_14_image_3.jpg"
    ]
)
ListingCategory.create( listing: bates_needles, category: notions )

assorted_thread = Listing.create(
    user: josh,
    title: "Assorted spools of poly thread",
    description: "Mostly full, mostly new. I have 36 spools for $4 each, or buy the lot for $140",
    price: 4,
    quantity: 36,
    unit: "spool",
    image_urls: [
        "http://res.cloudinary.com/bythebolt/image/upload/v1616595305/listings/15/listing_15_image_0.jpg"
    ]
)
ListingCategory.create( listing: assorted_thread, category: thread )

done_seeding = Time.now

puts "🧵🧵🧵🧵🧵🧵 Seeded: #{ done_seeding - started_seeding } secs. 🧵🧵🧵🧵🧵🧵"
