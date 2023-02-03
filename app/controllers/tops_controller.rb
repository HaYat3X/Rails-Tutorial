class TopsController < ApplicationController
  # ! Hello_Railsを表示してみる。
  def index
    # * 変数の前に@をつけるとviewに変数を渡すことが出来る。
    @hello_rails = "Hello_Rails"
  end
end
