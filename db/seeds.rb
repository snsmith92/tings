# Vehicles Category & Subcategories
vehicles = Category.create(name: "Vehicles")
vehicles_motor = Category.create(name: "Motor Vehicles", parent: vehicles)
vehicles_parts = Category.create(name: "Car Parts & Accessories", parent: vehicles)
vehicles_commercial = Category.create(name: "Commercial Vehicles", parent: vehicles)
vehicles_boats = Category.create(name: "Boats", parent: vehicles)
vehicles_other = Category.create(name: "Other", parent: vehicles)

# Properties Category and Subcategories
properties = Category.create(name: "Properties & Rentals")
properties_apartments = Category.create(name: "Apartments & Efficiencies", parent: properties)
properties_homes = Category.create(name: "Homes/Properties for Sale", parent: properties)
properties_commercial = Category.create(name: "Commercial Rentals", parent: properties)
properties_vacation = Category.create(name: "Vacation Rentals", parent: properties)
properties_other = Category.create(name: "Other", parent: properties)

# Electronics category and subcategories
electronics = Category.create(name: "Electronics")
electronics_computers = Category.create(name: "Computers & Laptops", parent: electronics)
electronics_mobile = Category.create(name: "Mobile Phones & Tablets", parent: electronics)
electronics_video= Category.create(name: "Video Games/Consoles", parent: electronics)
electronics_av = Category.create(name: "Audio/visual Equipment", parent: electronics)
electronics_tv = Category.create(name: "Televisions", parent: electronics)
electronics_other = Category.create(name: "Other", parent: electronics)

# Home and Appliances category and subcategories
home = Category.create(name: "Home and Appliances")
home_furniture = Category.create(name: "Furniture", parent: home)
home_appliances = Category.create(name: "Appliances", parent: home)
home_other = Category.create(name: "Other", parent: home)

# Sports and Hobby
sports_hobby = Category.create(name: "Hobby, Arts, and Sport")
sports_hobby_sporting = Category.create(name: "Sporting Items", parent: sports_hobby)
sports_hobby_art = Category.create(name: "Art & Creative", parent: sports_hobby)
sports_hobby_music = Category.create(name: "Music & Instruments", parent: sports_hobby)
sports_hobby_other = Category.create(name: "Other", parent: sports_hobby)

# Tools and heavy equipment
tools = Category.create(name: "Tools & Heavy Equipment")

# Beauty
beauty = Category.create(name: "Beauty & Personal Services")
beauty_services = Category.create(name: "Hair and Nails", parent: beauty)
beauty_makeup = Category.create(name: "Makeup Services", parent: beauty)
beauty_other = Category.create(name: "Other", parent: beauty)

# Services
services = Category.create(name: "Services")
services_events = Category.create(name: "Events", parent: services)
services_maintenance = Category.create(name: "Household & Maintenance", parent: services)
services_other = Category.create(name: "Other", parent: services)

# Food 
food = Category.create(name: "Food & Restaurant")

# Clothing 
clothing = Category.create(name: "Clothing")

# Jobs 
jobs = Category.create(name: "Jobs")
jobs_employment = Category.create(name: "Available Jobs", parent: jobs)
jobs_employee = Category.create(name: "Seeking employment", parent: jobs)