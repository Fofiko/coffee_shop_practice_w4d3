require_relative('../db/sql_runner')

class CoffeeOrder

  attr_reader :first_name, :type, :size, :sugar, :id

  def initialize(options)
    @id = options['id'].to_i
    @first_name = options['first_name']
    @type = options['type']
    @size = options['size']
    @sugar = options['sugar']
  end

  def save()
    sql = "INSERT INTO coffee_orders
    (first_name, type, size, sugar)
    VALUES ($1, $2, $3, $4)
    RETURNING *"
    values = [@first_name, @type, @size, @sugar]
    coffee_data = SqlRunner.run(sql, values)
    @id = coffee_data.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM coffee_orders"
    coffees = SqlRunner.run(sql)
    result = coffees.map { |coffee| coffeeOrder.new(coffee) }
    return result
  end


end
