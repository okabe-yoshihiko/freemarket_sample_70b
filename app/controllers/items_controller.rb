class ItemsController < ApplicationController
  def index
  end

  def show
  end

  def confirm
  end

  def new
    @items = Item.new
    # @items.users << current_user
  end

  

end
