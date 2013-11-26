class ReviewsController < ApplicationController
  before_filter :require_login, :only => [:edit, :create, :show, :update, :destroy]

  def show
    @review = Review.find(params[:id])
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.build(review_params)
    @review.user_id = current_user.id 

    if @review.save
      redirect_to restaurants_path, notice: 'Review created successfully'
    else
      render :action => :show
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy  
  end

  private
  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:comment, :restaurant_id)
  end
end
