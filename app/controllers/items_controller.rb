class ItemsController < ApplicationController
  require 'payjp'

  def index
  end

  def show
    @item = Item.find(1)
  end

  def confirm
    @item = Item.find(params[:id])
  end

  def pay
    card = Card.where(user_id: current_user.id).first
    @item = Item.find(params[:id])

    Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
    Payjp::Charge.create(
      amount: @item.price, 
      card: params['payjp-token'], 
      currency: 'jpy'
    )
    @item.update(buyer_id: current_user.id)
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
      :buyer_id
    )
      #この辺の他コードは関係ない部分なので省略してます
  end

end
