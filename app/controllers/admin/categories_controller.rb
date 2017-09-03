class Admin::CategoriesController < ApplicationController

USER_ID= ENV['ADMIN_USERNAME']
PASSWORD= ENV['ADMIN_PASSWORD']

before_filter :authenticate

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end

  def destroy
    @category = Category.find params[:id]
    @category.destroy
    redirect_to [:admin, :categories], notice: 'Category deleted!'
  end

  private

  def category_params
    params.require(:category).permit(
      :name
    )
  end

  def authenticate
    authenticate_or_request_with_http_basic do |id, password|
      id == USER_ID && password == PASSWORD
    end
  end

end
