require 'faker'

CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

5.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: CATEGORIES.sample
)
  # puts "Restaurant ##{i + 1}"
  # puts "Name : #{restaurant}"
  # puts "Address : #{address}"
  # puts "Phone Number : #{phone_number}"
  # puts "Category : #{category}"
  # puts '-' * 50
end
