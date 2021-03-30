started_seeding = Time.now

############ Categories ############

fabric = Category.create( name: "Fabric" )
yarn = Category.create( name: "Yarn" )
thread = Category.create( name: "Thread" )
notions = Category.create( name: "Notions" )
books = Category.create( name: "Books/Magazines" )
patterns = Category.create( name: "Patterns" )
machines = Category.create( name: "Machines" )
services = Category.create( name: "Services" )

############ Users & User categories ############

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

marty = User.create(
    username: "marty",
    password: "123",
    avatar_url: "http://res.cloudinary.com/bythebolt/image/upload/v1616799677/avatars/marty_avatar.jpg",
    email: "martinfrank@earthlink.net",
    bio: "I have seized the light! I have arrested its flight!",
    location: [ 40.957911013294776, -74.30871072225274 ]
)
UserCategory.create( user: marty, category: notions )
UserCategory.create( user: marty, category: books )

central_fabric = User.create(
    username: "central_fabric",
    password: "123",
    avatar_url: "http://res.cloudinary.com/bythebolt/image/upload/v1616806425/avatars/central_fabric_avatar.jpg",
    email: "centralfabricsinc@gmail.com",
    bio: "Store offering a variety of fabric & notions, plus sewing classes, alterations & machine repairs.",
    location: [ 40.762695180323895, -74.22413857653738 ]
)
UserCategory.create( user: central_fabric, category: fabric )
UserCategory.create( user: central_fabric, category: patterns )
UserCategory.create( user: central_fabric, category: notions )
UserCategory.create( user: central_fabric, category: services )

############ Listings & Listing categories ############

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
twill.update( created_at: twill.created_at - rand( 0..100 ).days ) if [ true, true, true, true, true, true, true, true, true, false ].sample
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
bernina.update( created_at: bernina.created_at - rand( 0..100 ).days ) if [ true, true, true, true, true, true, true, true, true, false ].sample
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
shears.update( created_at: shears.created_at - rand( 0..100 ).days ) if [ true, true, true, true, true, true, true, true, true, false ].sample
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
strommen.update( created_at: strommen.created_at - rand( 0..100 ).days ) if [ true, true, true, true, true, true, true, true, true, false ].sample
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
voile.update( created_at: voile.created_at - rand( 0..100 ).days ) if [ true, true, true, true, true, true, true, true, true, false ].sample
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
dress_form.update( created_at: dress_form.created_at - rand( 0..100 ).days ) if [ true, true, true, true, true, true, true, true, true, false ].sample
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
rural_pa_clothing.update( created_at: rural_pa_clothing.created_at - rand( 0..100 ).days ) if [ true, true, true, true, true, true, true, true, true, false ].sample
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
caron_yarn.update( created_at: caron_yarn.created_at - rand( 0..100 ).days ) if [ true, true, true, true, true, true, true, true, true, false ].sample
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
yarn_lot.update( created_at: yarn_lot.created_at - rand( 0..100 ).days ) if [ true, true, true, true, true, true, true, true, true, false ].sample
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
reliable_iron.update( created_at: reliable_iron.created_at - rand( 0..100 ).days ) if [ true, true, true, true, true, true, true, true, true, false ].sample
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
passap.update( created_at: passap.created_at - rand( 0..100 ).days ) if [ true, true, true, true, true, true, true, true, true, false ].sample
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
featherweight.update( created_at: featherweight.created_at - rand( 0..100 ).days ) if [ true, true, true, true, true, true, true, true, true, false ].sample
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
amish_winder.update( created_at: amish_winder.created_at - rand( 0..100 ).days ) if [ true, true, true, true, true, true, true, true, true, false ].sample
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
bates_needles.update( created_at: bates_needles.created_at - rand( 0..100 ).days ) if [ true, true, true, true, true, true, true, true, true, false ].sample
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
assorted_thread.update( created_at: assorted_thread.created_at - rand( 0..100 ).days ) if [ true, true, true, true, true, true, true, true, true, false ].sample
ListingCategory.create( listing: assorted_thread, category: thread )

featherweight_bobbin_cases = Listing.create(
    user: josh,
    title: "ORIGINAL Singer 45750 bobbin case for Featherweight & other machines",
    description: "I have THREE (3) Singer Featherweight bobbin cases available. ORIGINAL VINTAGE SIMANCO PART! Made in USA. All three have been cleaned/polished and checked for tension. YES, they are expensive!! Please contact for more details and to inqure about shipping.",
    price: 89.99,
    quantity: 3,
    unit: "each",
    image_urls: [
        "https://res.cloudinary.com/bythebolt/image/upload/v1616798435/listings/16/listing_16_image_0.jpg",
        "https://res.cloudinary.com/bythebolt/image/upload/v1616798435/listings/16/listing_16_image_1.jpg",
        "https://res.cloudinary.com/bythebolt/image/upload/v1616798435/listings/16/listing_16_image_2.jpg",
        "https://res.cloudinary.com/bythebolt/image/upload/v1616798435/listings/16/listing_16_image_3.jpg"
    ]
)
featherweight_bobbin_cases.update( created_at: featherweight_bobbin_cases.created_at - rand( 0..100 ).days ) if [ true, true, true, true, true, true, true, true, true, false ].sample
ListingCategory.create( listing: featherweight_bobbin_cases, category: notions )

schmetz_needles = Listing.create(
    user: marty,
    title: "Lot of Vintage Schmetz Sewing Machine Needles assorted sizes",
    description: "Schmetz 110 FL sewing machine needles, size 90/14. I did not count the needles but they feel full. High quality vintage needles made in Germany. 10 each or 100 for the lot",
    price: 10,
    quantity: 12,
    unit: "each",
    image_urls: [
        "http://res.cloudinary.com/bythebolt/image/upload/v1616799987/listings/17/listing_17_image_0.jpg"
    ]
)
schmetz_needles.update( created_at: schmetz_needles.created_at - rand( 0..100 ).days ) if [ true, true, true, true, true, true, true, true, true, false ].sample
ListingCategory.create( listing: schmetz_needles, category: notions )

bernina_favorit = Listing.create(
    user: marty,
    title: "Vintage Bernina Favorit 740 sewing machine",
    description: "Amazing vintage Bernina Favorit 740 sewing machine in great original condition! Clean in and out with no missing or damaged parts. Sews a beautiful stitch! Comes with instruction manual, original feet, buttonhole knife, and foot pedal/power cord. Please be aware this is a European machine and runs on 220v power. You need a transformer to use it in North America. CASH ON PICKUP ONLY - this item is too heavy to ship!! Please ask any questions.",
    price: 650,
    quantity: 1,
    image_urls: [
        "http://res.cloudinary.com/bythebolt/image/upload/v1616800404/listings/18/listing_18_image_0.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616800404/listings/18/listing_18_image_1.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616800404/listings/18/listing_18_image_2.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616800404/listings/18/listing_18_image_3.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616800404/listings/18/listing_18_image_4.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616800404/listings/18/listing_18_image_5.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616800404/listings/18/listing_18_image_6.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616800404/listings/18/listing_18_image_7.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616800404/listings/18/listing_18_image_8.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616800404/listings/18/listing_18_image_9.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616800404/listings/18/listing_18_image_10.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616800412/listings/18/listing_18_image_11.jpg"
    ]
)
bernina_favorit.update( created_at: bernina_favorit.created_at - rand( 0..100 ).days ) if [ true, true, true, true, true, true, true, true, true, false ].sample
ListingCategory.create( listing: bernina_favorit, category: machines )

muslin_bolt = Listing.create(
    user: central_fabric,
    title: "100% ORGANIC COTTON UNBLEACHED MUSLIN BTY",
    description: "NATURAL UNBLEACHED WHITE MEDIUM WEIGHT NATURAL COTTON MUSLIN CUT FROM 1ST QUALITY ROLL 100% COTTON - MUSLIN FABRIC IS GREAT FOR QUILTING, CLOTHING, CURTAINS, APRONS, SHEETS, PILLOW CASES, AND CRAFT PROJECTS ORDERING 1 WILL GIVE YOU 48\" WIDE BY 36\" LONG, IF YOU ORDER MORE THAN 1 YARD IT WILL BE ONE CONTINUOUS PIECE - PLEASE INQUIRE ABOUT BULK/BOLT DISCOUNTS MACHINE WASH WARM TUMBLE DRY REMOVE PROMPTLY PICKUP FROM CENTRAL FABRICS EAST ORANGE NJ",
    price: 4,
    quantity: 100,
    unit: "yard",
    image_urls: [
        "http://res.cloudinary.com/bythebolt/image/upload/v1616807224/listings/19/listing_19_image_0.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616807224/listings/19/listing_19_image_1.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616807224/listings/19/listing_19_image_2.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616807224/listings/19/listing_19_image_3.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616807224/listings/19/listing_19_image_4.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616807224/listings/19/listing_19_image_5.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616807224/listings/19/listing_19_image_6.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616807224/listings/19/listing_19_image_7.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616807224/listings/19/listing_19_image_8.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616807232/listings/19/listing_19_image_9.jpg"
    ]
)
muslin_bolt.update( created_at: muslin_bolt.created_at - rand( 0..100 ).days ) if [ true, true, true, true, true, true, true, true, true, false ].sample
ListingCategory.create( listing: muslin_bolt, category: fabric )

quilting_thread_lot = Listing.create(
    user: marty,
    title: "Lot of 70 Spools of Quilting Thread (Guttermann, Mettler, Coates, etc.) plus 2 wood thread stands",
    description: "I am selling this for my wife who loves to quilt\nThreads of various types, brands, etc including polyester, cotton, and silk\nI am including two very sturdy wood spool stands, the smaller one is made by June Taylor",
    price: 70,
    quantity: 1,
    image_urls: [
        "http://res.cloudinary.com/bythebolt/image/upload/v1616808032/listings/20/listing_20_image_0.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616808032/listings/20/listing_20_image_1.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616808032/listings/20/listing_20_image_2.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616808032/listings/20/listing_20_image_3.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616808032/listings/20/listing_20_image_4.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616808032/listings/20/listing_20_image_5.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616808032/listings/20/listing_20_image_6.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616808038/listings/20/listing_20_image_7.jpg"
    ]
)
quilting_thread_lot.update( created_at: quilting_thread_lot.created_at - rand( 0..100 ).days ) if [ true, true, true, true, true, true, true, true, true, false ].sample
ListingCategory.create( listing: quilting_thread_lot, category: thread )

green_plaid_upholstery = Listing.create(
    user: central_fabric,
    title: "PLAID GREEN UPHOLSTERY FABRIC 100% COTTON",
    description: "GREEN COTTON UPHOLSTERY FABRIC MEDIUM TO HEAVY WEIGHT\nIF YOU ORDER MORE THAN 1 YARD IT WILL BE ONE CONTINUOUS PIECE\nPLEASE INQUIRE ABOUT BULK/BOLT DISCOUNTS\nPICKUP FROM CENTRAL FABRICS EAST ORANGE NJ",
    price: 8,
    quantity: 17,
    unit: "yard",
    image_urls: [
        "https://res.cloudinary.com/bythebolt/image/upload/v1616809155/listings/21/listing_21_image_0.jpg",
        "https://res.cloudinary.com/bythebolt/image/upload/v1616809155/listings/21/listing_21_image_1.jpg",
        "https://res.cloudinary.com/bythebolt/image/upload/v1616809155/listings/21/listing_21_image_2.jpg"
    ]
)
green_plaid_upholstery.update( created_at: green_plaid_upholstery.created_at - rand( 0..100 ).days ) if [ true, true, true, true, true, true, true, true, true, false ].sample
ListingCategory.create( listing: green_plaid_upholstery, category: fabric )

green_pattern_case = Listing.create(
    user: marty,
    title: "Green plastic pattern case with vintage sewing patterns - McCalls, Butterick",
    description: "Green sewing pattern case with vintage sewing patterns for men, women and children from McCalls, Butterick, Vogue, See & Sew and more. Please ask for full pattern list. Sold as a lot",
    price: 50,
    quantity: 1,
    image_urls: [
        "http://res.cloudinary.com/bythebolt/image/upload/v1616858518/listings/22/listing_22_image_0.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616858518/listings/22/listing_22_image_1.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616858518/listings/22/listing_22_image_2.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616858518/listings/22/listing_22_image_3.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616858518/listings/22/listing_22_image_4.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616858518/listings/22/listing_22_image_5.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616858518/listings/22/listing_22_image_6.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616858518/listings/22/listing_22_image_7.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616858518/listings/22/listing_22_image_8.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616858524/listings/22/listing_22_image_9.jpg"
    ]
)
green_pattern_case.update( created_at: green_pattern_case.created_at - rand( 0..100 ).days ) if [ true, true, true, true, true, true, true, true, true, false ].sample
ListingCategory.create( listing: green_pattern_case, category: patterns )
ListingCategory.create( listing: green_pattern_case, category: notions )

workbasket_magazines = Listing.create(
    user: marty,
    title: "Vintage 1950's sewing/knitting magazine issues - \"The Workbasket\"",
    description: "Lot of 20 vintage sewing, knitting, crocheting, crafting magazines from the fifties. Fair/poor condition but still readable. Sold as a lot for my wife. Thanks for looking",
    price: 15,
    quantity: 1,
    image_urls: [
        "http://res.cloudinary.com/bythebolt/image/upload/v1616858881/listings/23/listing_23_image_0.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616858881/listings/23/listing_23_image_1.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616858881/listings/23/listing_23_image_2.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616858881/listings/23/listing_23_image_3.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616858881/listings/23/listing_23_image_4.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616858881/listings/23/listing_23_image_5.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616858881/listings/23/listing_23_image_6.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1616858889/listings/23/listing_23_image_7.jpg"
    ]
)
workbasket_magazines.update( created_at: workbasket_magazines.created_at - rand( 0..100 ).days ) if [ true, true, true, true, true, true, true, true, true, false ].sample
ListingCategory.create( listing: workbasket_magazines, category: books )

adler = Listing.create(
    user: elna,
    title: "Antique Adler 187 sewing machine",
    description: "Adler 187 antique made in germany great condition comes with accessories very heavy local pickup only",
    price: 600,
    quantity: 1,
    image_urls: [
        "http://res.cloudinary.com/bythebolt/image/upload/v1617052427/listings/24/listing_24_image_0.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1617052427/listings/24/listing_24_image_1.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1617052429/listings/24/listing_24_image_2.jpg",
        "http://res.cloudinary.com/bythebolt/image/upload/v1617052429/listings/24/listing_24_image_3.jpg"
    ]
)
adler.update( created_at: adler.created_at - rand( 0..100 ).days ) if [ true, true, true, true, true, true, true, true, true, false ].sample
ListingCategory.create( listing: adler, category: machines )

############ Chats & Messages ############

bernina_chat = Chat.create( listing: bernina, subject: bernina.title )
Message.create( content: "Hi, let's chat about #{ bernina.title }!", user: josh, chat: bernina_chat )
Message.create( content: "Is this still available?", user: elna, chat: bernina_chat )
Message.create( content: "Yes, are you interested?", user: josh, chat: bernina_chat )

reliable_iron_chat = Chat.create( listing: reliable_iron, subject: reliable_iron.title )
Message.create( content: "Hi, let's chat about #{ reliable_iron.title }!", user: rosa, chat: reliable_iron_chat )
Message.create( content: "Can this item be shipped?", user: josh, chat: reliable_iron_chat )
Message.create( content: "No, sorry, local pickup only", user: rosa, chat: reliable_iron_chat )
Message.create( content: "OK thanks anyway", user: josh, chat: reliable_iron_chat )

done_seeding = Time.now

puts "🧵🧵🧵🧵🧵🧵 Seeded: #{ done_seeding - started_seeding } secs. 🧵🧵🧵🧵🧵🧵"
