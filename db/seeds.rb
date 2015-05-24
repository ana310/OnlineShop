# Channel.create(name: "Home")
# Channel.create(name: "Electronics")
# Channel.create(name: "Fashion")

# for i in 1..3
#   c = Channel.find(i)
#   for j in 1..5
#     c.products.create(name: "Product ##{j} of channel ##{i}", description: "A product.", active: "Wat")
#   end
# end

p = Product.all

# p.each do |product|
#  for i in 1..4
#    product.variants.create(quantity: i + 5 + product.id, price: i * 10 + product.id)
#  end
# end

p.each do |product|
  for i in 1..4
    product.comments.create(user_name: "username#{i}", text: "Some text")
  end
end
