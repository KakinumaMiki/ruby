class Counter
  def initialize
    @count = 0
  end

  def up
    @count += 1
  end

  def value
    @count
  end

  def down
    @count -= 1
  end

  def reset_value
    @count = 0
  end
end

counter1 = Counter.new
counter2 = Counter.new
counter1.up
puts counter1.value # => 1と表示される
counter1.up
puts counter1.value # => 2と表示される
counter1.down
puts counter1.value # => 1と表示される
counter1.up
counter1.up
counter1.reset_value
puts counter1.value # => 0と表示される

counter2.up
counter2.up
puts "counter1: #{counter2.value}" # => 2と表示される
puts "counter: #{counter1.value}" # => 0と表示される
