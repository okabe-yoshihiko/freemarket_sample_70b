class ItemsController < ApplicationController
  def index
    @item = Item.includes(:item_images).order('created_at DESC')
  end

  def show
  end

  def confirm
  end

  def new
    @item = Item.new
    @item.item_images.new

    # @items.users << current_user
  end

  def create
    @item = Item.new(item_params)
    @item.update(seller_id: current_user.id)
    # binding.pry
    @item.save!
    # binding.pry

    redirect_to root_path, notice:'商品を出品しました'
    # if params[:item_image_attributes] != nil
    #   @item.save
    #   redirect_to root_path(@item.id)
    # end
  end

  private
  def item_params
    params.require(:item).permit(
      :name, 
      :detail, 
      :price,
      
      :category_id, 
      :brand_id, 
      :size_id, 
      :delivery_cities_id,
      :delivery_days_id,
      :delivery_types_id,
      :condition_id, 
      item_image_attributes:[:image]
    )
  end
end
