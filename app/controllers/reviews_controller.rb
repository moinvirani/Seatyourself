class ReviewsController < ApplicationController
  
  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = @restaurant.reviews.build(review_params)
    @review.user.id = current_user.id

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
    params.require[:review].permit(:comments, :product_id)
  end
end
