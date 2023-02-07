class TopsController < ApplicationController
  # ! Hello_Railsを表示するメソッド
  def index
    # * 変数の前に@をつけるとviewに変数を渡すことが出来る。
    @hello_rails = "Hello_Rails"
  end

  # ! usersテーブルの中身を取得するメソッド
  def users
    @datas = User.all
  end

  # ! usersテーブルにデータを登録するメソッド （フォームの表示）
  def new
    @user = User.new
  end

  # ! usersテーブルにデータを登録するメソッド （DB保存）
  def create
    @user = User.new(params.require(:user).permit(:name))

    if @user.save
      redirect_to action: :index
    else
      render :new
    end
  end

  # ! usersテーブルの情報を更新する (更新フォームの表示)
  def edit
    @user = User.find(params[:id])
  end

  # ! usersテーブルの情報を更新する （DB更新）
  def update
    @user = User.find(params[:id])

    if @user.update(params.require(:user).permit(:name))
      redirect_to action: :users
    else
      render :edit
    end
  end
end
