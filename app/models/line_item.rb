class LineItem < ApplicationRecord
  
  belongs_to :order, optional: true
  belongs_to :product, optional: true
  belongs_to :cart

  # Return line set total price
  def total_price
    product.price * quantity
  end
    
end
