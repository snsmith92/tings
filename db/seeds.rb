# Vehicles Category & Subcategory
vehicles = Category.create(name: "Vehicles")
vehicles_motor = Category.create(name: "Motor Vehicles", parent: vehicles)
vehicles_parts = Category.create(name: "Car Parts & Accessories", parent: vehicles)
vehicles_commercial = Category.create(name: "Commercial Vehicles", parent: vehicles)
vehicles_boats = Category.create(name: "Boats", parent: vehicles)

