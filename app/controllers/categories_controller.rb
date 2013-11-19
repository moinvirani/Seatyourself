class CategoriesController < ApplicationController
  def index
    @categories = Category.all 
  end

  def create
    @category = Category.new(category_params)

  end

  def show
  end

  def edit
  end

  def destroy
  end

  def update
  end

  private

  def category_params
    params.require(:category).permit()
  end
end
