class CreateCarts < ActiveRecord::Migration
  def change
    create_cart :carts do |c|
      c.string :name
      
    end
  end
end
