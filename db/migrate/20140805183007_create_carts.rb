class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |c|
      c.string :name

    end
  end
end
