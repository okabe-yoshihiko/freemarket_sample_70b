class ItemsController < ApplicationController
  def index
  end

  def show
  end

  def confirm
  end

  def new
    @category = Category.where(ancestry: nil).limit(13) # categoryの親を取得
  end

  def category_children  
    @category_children = Category.find(params[:productcategory]).children 
    end
  # Ajax通信で送られてきたデータをparamsで受け取り､childrenで子を取得

  def category_grandchildren
    @category_grandchildren = Category.find(params[:productcategory]).children
    end
  # Ajax通信で送られてきたデータをparamsで受け取り､childrenで孫を取得｡（実際には子カテゴリーの子になる｡childrenは子を取得するメソッド)
end