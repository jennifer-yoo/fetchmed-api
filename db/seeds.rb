User.destroy_all
Supply.destroy_all
Medication.destroy_all

User.create(first: "Jennifer", last: "Yoo", email: "jenn@email.com", password: "1234")

Supply.create(rxnum: 0000, equipment: "CPAP machine", refill: 3, brand: "Medstar")
Supply.create(rxnum: 0001, equipment: "Walker", refill: 0, brand: "EZ")
Supply.create(rxnum: 0002, equipment: "Wheelchair", refill: 0, brand: "Wheelie")

Medication.create(name: "Amoxillicin", strength: 5, rxnum: 1111, refills: 2, quantity: 14, instruction: "Take 2 pills twice a day")
Medication.create(name: "Benadryl", strength: 10, rxnum: 1112, refills: 1, quantity: 30, instruction: "Take 2 as needed")
Medication.create(name: "Lorazapam", strength: 5, rxnum: 1113, refills: 0, quantity: 30, instruction: "Take 1 before bed")
Medication.create(name: "Prednisone", strength: 5, rxnum: 1114, refills: 0, quantity: 7, instruction: "Take 1 once a day")
Medication.create(name: "Metformin", strength: 20, rxnum: 1115, refills: 5, quantity: 30, instruction: "Take 1 once a day before eating")

Order.create(user_id: 1, supply_id: 1)
Order.create(user_id: 1, medication_id: 1)

puts "#{Supply.all.count + User.all.count + Medication.all.count + Order.all.count} seeded"