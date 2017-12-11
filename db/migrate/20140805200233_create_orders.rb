class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |o|
      o.string :name
      o.integer :user_id
    end
  end
end
