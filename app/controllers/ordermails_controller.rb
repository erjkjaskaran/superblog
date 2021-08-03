class OrdermailsController < ApplicationController
    before_action :debugg only[:create]
    def mailer
        debugger
        @order.name="Jaskaran"

        @order.email="erjk@gmail.com"
        @order.address ="VVV"
        @order.phone="12321312"
        @order.message="message"
        debugger
        OrdermailMailer.with(order: @order).new_order_email.deliver_later
    end
    def debugg
        debugger
    end
    
end