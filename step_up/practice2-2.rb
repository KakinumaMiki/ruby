class EvenCounter

  def initialize
    @count = 0
    @upCount = 0
  end

  def up
    @upCount += 1
    if @upCount % 2 == 0
      @count += 1
    end
  end

  def value
    @count
  end
end

counter = EvenCounter.new
counter.up # => ここではアップしない
counter.up # => ここでアップ
puts counter.value # => 1と表示される
counter.up # => ここではアップしない
counter.up # => ここでアップ
counter.up # => ここではアップしない
puts counter.value # => 2と表示される
