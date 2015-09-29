class ReviewsController < ApplicationController

def show
    @review = Review.all
end

def new
  @review = Review.new
end

def create
  @review = Review.new
end

def update
  @review = Review.find(params[:id])
end

def edit
  @review = Review.new
end

private

def review_params
  params.require(:review).permit(:rating, :comment, :user)
end
end
