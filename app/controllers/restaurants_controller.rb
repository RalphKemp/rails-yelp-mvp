class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurants_path
  end

  def destroy
    restaurant_to_delete = Restaurant.find(params[:id])
    restaurant_to_delete.destroy
    redirect_to restaurants_path
  end

private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end








  # def edit
  #   @article = Article.find(params[:id])
  # end

  # def update
  #   article_to_update = Article.find(params[:id])
  #   article_to_update.update(article_params)
  #   redirect_to article_path(article_to_update)

  # end

  # def destroy
  #   article_to_delete = Article.find(params[:id])
  #   article_to_delete.destroy
  #   redirect_to articles_path
  # end


