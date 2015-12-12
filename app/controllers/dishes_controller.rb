class DishesController < ApplicationController
  def index
    @dishes = Dish.all
    @apps = Dish.where(category: 'Appetizer')
    @soups = Dish.where(category: 'Soup')
    @salads = Dish.where(category: 'Salad')
    @sandwiches = Dish.where(category: 'Sandwich')
    @pastas = Dish.where(category: 'Pasta')
    @entrees = Dish.where(category: 'Entree')
    @desserts = Dish.where(category: 'Dessert')

  end

  def manage
    @dishes = Dish.all
  end

  def new

  end

  def edit
  end

  def show
  end

  def create
    @dish = Dish.new(dish_params)
    @dish.update(status: "active")
    
    if @dish.save
      flash[:notice] = "Your dish has been added"
      redirect_to manage_path
    else
      flash[:alert] = "There was a problem with your dish"
      redirect_to "new_dish_path"
    end
  end

  def update
  end

  def destroy
  end

  private

  def dish_params
    params.require(:dish).permit(:category, :title, :description, :price)
  end

end
