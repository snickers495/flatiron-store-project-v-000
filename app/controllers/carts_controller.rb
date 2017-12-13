class CartsController < ApplicationController
  def index
    @carts = Cart.all
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
    @cart = Cart.find_by(id: params[:id])
  end

  def checkout
    cart = current_user.current_cart
    cart.update(status: "submitted")
    cart.line_items.each do |line|
      item = Item.find_by(id: line.item.id)
      item.update(inventory: (item.inventory - line.quantity))
    end
    current_user.update(current_cart: nil)
    redirect_to cart_path(cart)
  end

  def update
  end

  def destroy
  end

end
