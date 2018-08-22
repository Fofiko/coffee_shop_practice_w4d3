require_relative('../models/coffee_order')

coffee1 = CoffeeOrder.new({
  "first_name" => "John",
  "type" => "iced",
  "size" => "tall",
  "sugar" => "No"
})

coffee2 = CoffeeOrder.new({
  "first_name" => "Mary",
  "type" => "warm",
  "size" => "short",
  "sugar" => "Yes"
})


coffee1.save
coffee2.save
