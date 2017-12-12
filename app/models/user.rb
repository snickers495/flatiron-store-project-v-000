class User < ActiveRecord::Base
  has_many :carts
  has_many :items, through: :carts
  belongs_to :current_cart, class_name: "Cart", foreign_key: "current_cart"
  has_secure_password validations: false
end
