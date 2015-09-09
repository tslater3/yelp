class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
    if @review.save
      redirect_to restaurants_path
    else
      render :new
    end
  end

  def edit
  end

  private

  def review_params
    params.require(:review).permit(:user_id, :restaurant_id, :rating, :description)
  end
end
