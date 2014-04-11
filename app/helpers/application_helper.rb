module ApplicationHelper

  def number_to_euro(price)
    number_to_currency(price, :unit => '&euro;')
  end

  private

  def current_cart
    cart = Cart.find_by_id(session[:cart_id])
    if cart.nil?
        cart = Cart.create
        session[:cart_id] = cart_id
    end
    cart
  end

  def show_field_error(model, field)
    s=""

    if !model.errors[field].empty?
      s =
          <<-EOHTML
           <div id="error_message">
             #{model.errors[field][0]}
           </div>
      EOHTML
    end

    s.html_safe
  end

end


