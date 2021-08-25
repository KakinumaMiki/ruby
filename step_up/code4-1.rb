# ローカル変数
def test
  a = 1
  a = a +1
  a # このtest関数を抜けた時に、aに確保されていたメモリは解放
end

# インスタンス変数
# @valueはTESTクラスのインスタンス変数。
# インスタンス化された時から使えて、インスタンスが解放されるまで利用可
class Test
  def initialize
    @value = 1
  end

  def value
    @value
  end

  def value=(val)
    @value = val
  end
end
