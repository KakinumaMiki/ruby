# 4. 配列内のハッシュ情報を表示してみよう

fruits = [
  {name: "バナナ", price: 200},
  {name: "リンゴ", price: 200},
  {name: "イチゴ", price: 500},
  {name: "オレンジ", price: 250},
  {name: "モモ", price: 350}
]

# - 4-1.  priceが300以上のものだけ、nameの情報を出力(puts)してみよう。
puts '4-1 300以上のnameの出力'
fruits.each do |fruit|
  if fruit[:price] >= 300
  puts fruit[:name]
  end
end

# - 4-2. priceの合計を出力してみよう。
puts '4-2 priceの合計'
sum = 0
fruits.each do |fruit|
  sum += fruit[:price]
end
puts sum

# - 4-3. nameの文字数を出力してみよう。
puts '4-3 nameの文字数'
fruits.each do |fruit|
  puts "#{fruit[:name]}: #{fruit[:name].size}"
end

# - 4-4. priceの消費税を計算して出力してみよう。
puts '4-4 priceの消費税'
tax_rate = 0.10
fruits.each do |fruit|
  puts "#{fruit[:price]}の消費税：#{fruit[:price] * tax_rate}"
end
