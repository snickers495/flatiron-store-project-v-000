class User < ActiveRecord::Base
  has_many :carts
  has_many :items, through: :carts
  belongs_to :current_cart, class_name: "Cart", foreign_key: "cart_id"
  has_secure_password
end
