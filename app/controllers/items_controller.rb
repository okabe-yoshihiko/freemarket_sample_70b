class ItemsController < ApplicationController
  require 'payjp'

  def index
  end

  def show
  end

  def confirm
  end

  def pay
    card = Card.where(user_id: current_user.id).first
    Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
    Payjp::Charge.create(
      amount: 50, # 決済する値段
      card: params['payjp-token'], # フォームを送信すると作成・送信されてくるトークン
      currency: 'jpy'
    )
  redirect_to action: 'done' #完了画面に移動
  end

  def done
  end
end
