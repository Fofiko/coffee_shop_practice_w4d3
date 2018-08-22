require("minitest/autorun")
require_relative("../coffee_order")

class TestCoffeeOrder < MiniTest::Test

  def setup
    options = {
      "id" => 1,
      "first_name" => "John",
      "type" => "warm",
      "size" => "tall",
      "sugar" => "yes"}

    @coffee_order = CoffeeOrder.new(options)
  end

  def test_first_name()
    result = @coffee_order.first_name()
    assert_equal("John", result)
  end

  def test_type()
    result = @coffee_order.type()
    assert_equal("warm", result)
  end

  def test_size()
    result = @coffee_order.size()
    assert_equal("tall", result)
  end

  def test_sugar()
    result = @coffee_order.sugar()
    assert_equal("yes", result)
  end


end
