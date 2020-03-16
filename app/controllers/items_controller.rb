class ItemsController < ApplicationController
  require 'payjp'
  @item = Item.find(1)

  def index
  end

  def show
    @item = Item.find(1)
  end

  def confirm
    @item = Item.find(1)
  end

  def pay
    card = Card.where(user_id: current_user.id).first
    @item = Item.find(1)

    Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
    Payjp::Charge.create(
      amount: @item.price, # 決済する値段
      card: params['payjp-token'], # フォームを送信すると作成・送信されてくるトークン
      currency: 'jpy'
    )
    @item = Item.find(1)
    @item.update( buyer_id: current_user.id)
    redirect_to action: 'done' #完了画面に移動
  end

  def done
  end

  def new
    @category = Category.where(ancestry: nil).limit(13)
  end

  def category_children  
    @category_children = Category.find(params[:productcategory]).children 
  end


  def category_grandchildren
    @category_grandchildren = Category.find(params[:productcategory]).children
  end

  private

  def item_params
    params.require(:item).permit(
      :name,
      :detail,
      :price,
      :seller_id,
      :buyer_id,
      #この辺の他コードは関係ない部分なので省略してます
    )
  end

end
