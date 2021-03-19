# 2. 配列を操作してみよう1

nums = [1, 3, 5, 8, 4]

# - 2-1. イテレータを使用し、配列内の数値の合計値を出力してみよう。
puts '2-1 配列内の数値の合計'
sum = 0
nums.each do |num|
  sum += num
end
puts sum

# - 2-2. イテレータを使用し、配列内から偶数の数値のみを出力してみよう。
puts '2-2 偶数'
nums.each do |num|
  if num % 2 == 0
    puts num
  end
end

# - 2-3. イテレータを使用し、4以下の値の合計値を出力してみよう。
puts '2-3 4以下の合計'
sum = 0
nums.each do |num|
  if num <= 4
    # puts "num: #{num}"
    sum += num
  end
end
puts sum
