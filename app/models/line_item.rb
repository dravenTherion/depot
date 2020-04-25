class LineItem < ApplicationRecord
  
  belongs_to :product
  belongs_to :cart

  # Return line set total price
  def total_price
    product.price * quantity
  end
    
end
