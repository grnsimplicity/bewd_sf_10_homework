class ReviewsController < ApplicationController

def show
    @review = Review.all
end

def new
    @song = Song.find(params[:song_id])
    @review = review.new
end

def create
  @song = song.find(params[:song_id])
  @review = Review.create(review_params)
    if @song.save
    @song.reviews << @review
    redirect_to song_path(@song)
    else
    render'new'
  end
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
