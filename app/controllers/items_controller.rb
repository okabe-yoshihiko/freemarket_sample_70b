class ItemsController < ApplicationController
  require 'payjp'
  before_action :item_params, only: [:show, :destroy, :confirm, :pay, :done]
  before_action :move_to_session, except: [:index, :show]
  before_action :card_registration, only: [:confirm, :pay]

  def index
    @item = Item.all
  end

  def show
  end

  def destroy
    @item.destroy
    redirect_to action: 'index' 
  end

  def confirm
  end


  def pay
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
    @item = Item.find(params[:id])
  end

  def move_to_session
    redirect_to "/users/sign_in" unless user_signed_in?
  end

  def card_registration
    @card = Card.where(user_id: current_user.id).first if Card.where(user_id: current_user.id).present?
  end

end
