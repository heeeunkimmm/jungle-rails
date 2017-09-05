class ReviewsController < ApplicationController
  before_filter :login

  def create
    @id = params[:id]
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    @review.user = current_user

      if @review.save
        flash[:success] = "Your review has been successfully submitted!"
        redirect_to :back
      else
        flash[:danger] = "Your review has not been successfully submitted!"
        redirect_to :back
      end
  end

  def review_params
    params.require(:review).permit(
      :description,
      :rating
    )
  end

  def destroy
    @product = Product.find(params[:product_id])
    @review = Review.find params[:id]
    @review.destroy
    flash[:sucess] = "Review deleted!"
    redirect_to :back
  end

  private
  def login
    if !current_user
      flash[:danger] = "You are not logged in!"
      redirect_to :back
    end
  end
end
