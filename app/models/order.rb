class Order < ApplicationRecord

    has_many :line_items, dependent: :destroy

    payment_types = {}
      
    PaymentType.order(:id).each do |payment|
        payment_types[payment.name] = payment.id;
    end
    
    enum pay_type: payment_types

    validates :name, :address, :email, presence: true
    validates :pay_type, inclusion: pay_types.keys

    
    def add_line_items_from_cart(cart)

        cart.line_items.each do |item|
            item.cart_id = nil
            line_items << item
        end
    
    end    

end
