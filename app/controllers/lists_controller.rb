class ListsController < ApplicationController
  def new
    @list = List.new
  end
  
  def create
    list = List.new(list_params)
    list.save
    redirect_to '/top'
  end

  def index
    @lists = List.all
  end

  def show
  end

  def edit
  end
  
  private #privateは「ここから下はこのcontrollerの中でしか呼び出せません」という意味
  
  def list_params
    params.require(:list).permit(:title,:body)
  end
  
  # params: formから送られてくるデータはparamsの中に入っています。
  # require: 送られてきたデータの中からモデル名(ここでは:list)を指定し、データを絞り込みます。
  # permit: requireで絞り込んだデータの中から、保存を許可するカラムを指定します。
  
end
