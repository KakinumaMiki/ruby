# 3. 配列を操作してみよう2

 dev_lang = ['Ruby', 'Java', 'PHP', 'C', 'C#']

# - 3-1. イテレータを使用し、文字数が3文字以上の情報だけを出力してみよう。
puts '3-1 文字数が3文字以上'
dev_lang.each do |s|
  if s.size >= 3
    puts s
  end
end

# - 3-2. イテレータを使用し、RubyとPHPのみを出力してみよう。
puts '3-2 RubyとPHPのみ出力'
dev_lang.each do |s|
  if s == 'Ruby' or s == 'PHP'
  # if s == 'Ruby' || s == 'PHP'
    puts s
  end
end

# - 3-3. メソッドを使用し配列に’JavaScript’という文字列を追加した後、イテレータで配列内の文字列を全て出力してみよう。
puts '3-3 文字追加'
dev_lang.push('JavaScript')
dev_lang.each do |s|
  puts s
end
