class ChargesController <ApplicationController

			def create
		  # Amount in cents
		  @amount = 500

		  customer = Stripe::Customer.create(
		    :email => params[:stripeEmail],
		    :card  => params[:stripeToken]
		  )

		  charge = Stripe::Charge.create(
		    :customer    => customer.id,
		    :amount      => params[:amount],
		    :description => 'Item description ($60.00)',
		    :currency    => 'usd'
		  )

		rescue Stripe::CardError => e
		  flash[:error] = e.message
		  redirect_to charges_path
		end


end
