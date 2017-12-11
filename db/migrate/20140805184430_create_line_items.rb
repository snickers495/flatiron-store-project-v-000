class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |it|
      it.integer :category_id
      it.integer :item_id
      it.integer :cart_id
    end
  end
end
