# 本の情報を扱うクラス
class Book
  # 初期化時に使われるコンストラクタ
  def initialize(title, page_size)
    @title = title
    @page_size = page_size
  end

  # titleのゲッター
  def title
    @title
  end

  # titleのセッター
  def title=(value)
    @title = value
  end

  # page_sizeのゲッター
  def page_size
    @page_size
  end

  # page_sizeのセッター
  def page_size=(value)
    @page_size = value
  end
end

# 本棚として本を格納するクラスの基底クラス
class Bookshelf
  def initialize
    @books = []
  end

  def add_book(book)
    p self
    # 自分自身（self）のcan_add_book?メソッドを呼び出す
    unless self.can_add_book?(book)
      return false
    end

    @books << book
    true
  end

  def find_book_by_title(title)
    @books.each do |book|
      return book if title == book.title
    end
    nil
  end

  def sum_page_size
    size = 0
    @books.each do |book|
      size += book.page_size
    end
    size
  end

  def size
    @books.size
  end

  # 今この本を追加できますか？」というチェックを行えるメソッド
  def can_add_book?(book)
    true # デフォルトでは何も制限を行わないのでどんな時も本を追加できる
  end
end

#a
#
class ThinBookshelf < Bookshelf
  def initialize(max_size = 20)
    super()
    @max_size = max_size
  end

  def can_add_book?(book)
    @max_size > book.page_size()
  end
end


class LimitedBookshelf < ThinBookshelf
  def initialize
    super()
    @limit_count = 0
  end

  def can_add_book?(book)
    unless super(book)
      @limit_count += 1
    end
    super(book)
  end

  def get_reject_count
    @limit_count
  end

end

# 追加を拒否した回数
limitedBookshelf = LimitedBookshelf.new
if !limitedBookshelf.add_book(Book.new("20ページの本", 20))
  puts "拒否"
end
limitedBookshelf.add_book(Book.new("20ページの本", 20)) # 拒否2回目
puts "拒否した回数： #{limitedBookshelf.get_reject_count}"
