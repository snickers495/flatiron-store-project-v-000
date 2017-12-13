10.times do
  Item.create(
    title: Faker::Commerce.product_name,
    inventory: Faker::Number.number(2),
    price: Faker::Number.number(4)
  )
  Category.create(title: Faker::Commerce.department)
end

user = User.new
user.email = 'test@example.com'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.save!

counter = 1
Item.all.each do |item|
  item.category_id = counter
  item.save
  counter += 1
end
