class ReviewsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    @review.user = current_user

      if @review.save
        flash[:success] = "Your review has been successfully submitted!"
        redirect_to :back
      else
        redirect_to :back
      end
  end

  def review_params
    params.require(:review).permit(
      :description,
      :rating
    )
  end
end
