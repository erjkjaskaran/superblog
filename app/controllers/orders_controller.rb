class OrdersController<ApplicationController

	def new
		@order=Order.new
	end

	def create
		@order=Order.new(set_params)
		@order.user=current_user
		debugger
		if @order.save
			OrdermailMailer.with(post: @order).new_order_email.deliver_later
			redirect_to root_path(@post)
		else
			flash[:danger]="Unsuccessful"
			redirect_to root_path
		end
	end

	private
		def set_params
			params.require(:order).permit(:qty,:purpose)
		end
	

end