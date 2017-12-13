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

  def update
  end

  def destroy
  end

end
