class OrderMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def order_receipt(order)
    @order = order
    @url = '/orders'
    mail(to: @order.email, subject: "Your order #{@order.id} has been received.")
  end
end
