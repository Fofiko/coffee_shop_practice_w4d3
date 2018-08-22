require_relative('../models/coffee_order')

coffee1 = CoffeeOrder.new({
  "first_name" => "John",
  "type" => "iced",
  "size" => "tall",
  "sugar" => "yes"
})

coffee2 = CoffeeOrder.new({
  "first_name" => "Mary",
  "type" => "warm",
  "size" => "short",
  "sugar" => "no"
})


coffee1.save
coffee2.save
