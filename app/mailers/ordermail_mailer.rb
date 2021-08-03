class OrdermailMailer < ApplicationMailer
    def new_order_email
        @post=params[:post]
        debugger
        mail(to: @post.description, subject: "Order Confirmed!")
    end
end
