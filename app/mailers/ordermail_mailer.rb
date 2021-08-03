class OrdermailMailer < ApplicationMailer
    def new_order_email
        @post=params[:post]
        mail(to: @post.description, subject: "Order Confirmed!")
    end
end
