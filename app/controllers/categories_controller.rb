class CategoriesController < ApplicationController
  def show
    @products = Product.where(category_id: params[:id])
    @categories = Category.all
  end
end
