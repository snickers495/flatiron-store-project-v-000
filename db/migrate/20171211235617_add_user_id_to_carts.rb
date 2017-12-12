class AddUserIdToCarts < ActiveRecord::Migration
  def change
    add_column :carts, :user_id, :integer
    remove_column :line_items, :category_id, :integer
  end
end
