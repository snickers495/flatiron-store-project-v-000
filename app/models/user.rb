class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
  has_many :carts
  has_many :items, through: :carts
  belongs_to :current_cart, class_name: "Cart", foreign_key: "current_cart"
  validates :email, :presence => false, :email => false
  validates :encrypted_password, :presence => false, :encrypted_password => false

end
