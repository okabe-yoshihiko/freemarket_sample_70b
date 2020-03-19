class ItemsController < ApplicationController
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
      currency: 'Jpy'
    )

    @item.update(customer_id: current_user.id)
    redirect_to action: 'done'
  end

  def done
  end

  def new
    @category = Category.where(ancestry: nil).limit(13)
  end
end
