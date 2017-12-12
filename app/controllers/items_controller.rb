class ItemsController < ApplicationController
  def index
    @items = Item.all_available
  end

  def show
  end
end
