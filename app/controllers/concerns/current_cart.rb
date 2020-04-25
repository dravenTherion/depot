module CurrentCart

    private
    def set_cart
        
        @cart = Cart.find(session[:cart_id])
        
        rescue ActiveRecord::RecordNotFound
        
        @cart = Cart.create
        session[:cart_id] = @cart.id
    
    end

    # Redirect invalid cart to store index
    def invalid_cart
        logger.error "Attempt to access invalid cart #{params[:id]}"
        redirect_to store_index_url, notice: 'Invalid cart'
    end
    
    # Redirect invalid owner to store index
    def invalid_owner
        
        if(session[:cart_id].to_i != params[:id].to_i)
            logger.error "Attempt to access invalid cart #{params[:id]}"
            redirect_to store_index_url, notice: 'Invalid cart'
        end

    end

end
    