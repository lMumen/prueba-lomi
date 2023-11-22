product = Product.create!(name: 'Nuggets de pollo', brand: 'Super Pollo', description: 'Nuggets empanizados de pollo')
ProductVariant.create!(product: product, complement: '250gr', price: 1790)
variant1 = ProductVariant.create!(product: product, complement: '500gr', price: 2490)
ProductVariant.create!(product: product, complement: '1kg', price: 4790)

product = Product.create!(name: 'Carne Molida 5% grasa', brand: 'Cuisine&Co', description: 'Carne molida de res con %5 de materia grasa')
ProductVariant.create!(product: product, complement: '250gr', price: 2390)
ProductVariant.create!(product: product, complement: '500gr', price: 4780)
variant2 = ProductVariant.create!(product: product, complement: '1kg', price: 9890)

product = Product.create!(name: 'Choclo Congelado', brand: 'Minuto Verde', description: 'Choclo desgranado y congelado')
ProductVariant.create!(product: product, complement: '250gr', price: 1490)
ProductVariant.create!(product: product, complement: '500gr', price: 2390)

product = Product.create!(name: 'Leche entera', brand: 'Colun', description: 'Leche entera de vaca con 10% de materia grasa')
ProductVariant.create!(product: product, complement: '1lt', price: 1090)


product = Product.create!(name: 'Mix Frutos Secos', brand: 'Marco Polo', description: 'Seleccion de pistachos, mani y almendras saladas')
ProductVariant.create!(product: product, complement: '125gr', price: 2390)
variant3 = ProductVariant.create!(product: product, complement: '250gr', price: 4690)


product = Product.create!(name: 'Jugo en Polvo', brand: 'Zuko', description: 'Jugos frutales en polvo')
ProductVariant.create!(product: product, complement: 'Sabor Mango', price: 250)
ProductVariant.create!(product: product, complement: 'Sabor Frambuesa', price: 250)
ProductVariant.create!(product: product, complement: 'Sabor Sandia', price: 250)
ProductVariant.create!(product: product, complement: 'Sabor Papaya', price: 250)
ProductVariant.create!(product: product, complement: 'Sabor Melon', price: 250)

first_name =  Faker::Name.first_name
last_name = Faker::Name.last_name
client = Client.create!(rut: Faker::ChileRut.full_rut, first_name: first_name, last_name: last_name, email: "#{last_name}.#{first_name}@gmail.com", phone_number: Faker::PhoneNumber.cell_phone )

cart = Cart.create!(client: client)
cart.add_cart_item(product_variant: variant1, quantity: rand(1..5))
cart.add_cart_item(product_variant: variant2, quantity: rand(1..5))
cart.add_cart_item(product_variant: variant3, quantity: rand(1..5))
cart.pay!("Credit Card", 3)

first_name =  Faker::Name.first_name
last_name = Faker::Name.last_name
client = Client.create!(rut: Faker::ChileRut.full_rut, first_name: first_name, last_name: last_name, email: "#{last_name}.#{first_name}@gmail.com", phone_number: Faker::PhoneNumber.cell_phone )
cart = Cart.create!(client: client)
cart.add_cart_item(product_variant: variant1, quantity: rand(1..5))
cart.add_cart_item(product_variant: variant3, quantity: rand(1..5))
