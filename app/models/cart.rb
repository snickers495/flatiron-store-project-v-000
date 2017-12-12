class Cart < ActiveRecord::Base
  has_many :items, through: :line_items
  has_many :line_items

  def total
    counter = 0
    self.line_items.each do |l|
      counter += (l.quantity * l.item.price)
    end
    counter
  end

  def add_item(item)
    if !self.items.include?(Item.find(item))
      LineItem.new(item_id: item, cart_id: self.id)
    else
      line = LineItem.find_by(item_id: item, cart_id: self.id)
      line.update(quantity: (line.quantity + 1))
      line
    end
  end
end
