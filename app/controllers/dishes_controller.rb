class DishesController < ApplicationController
  def index
    @dishes = Dish.all
    @soups = Dish.where(category: 'Soup')
    @salads = Dish.where(category: 'Salad')
    @sandwiches = Dish.where(category: 'Sandwich')
    @seafood = Dish.where(category: 'Seafood Sandwich')
    @vegs = Dish.where(category: 'Veg Sandwich')
    @burgers = Dish.where(category: 'Burger')
    @desserts = Dish.where(category: 'Dessert')
    @beverages = Dish.where(category: 'Beverage')
    @toppings = Dish.where(category: 'Topping')
    @sides = Dish.where(category: 'Side')
    @kids = Dish.where(category: 'Kids')
  end

  def manage
    @dishes = Dish.all
    @soups = Dish.where(category: 'Soup')
    @salads = Dish.where(category: 'Salad')
    @sandwiches = Dish.where(category: 'Sandwich')
    @seafood = Dish.where(category: 'Seafood Sandwich')
    @vegs = Dish.where(category: 'Veg Sandwich')
    @burgers = Dish.where(category: 'Burger')
    @desserts = Dish.where(category: 'Dessert')
    @beverages = Dish.where(category: 'Beverage')
    @toppings = Dish.where(category: 'Topping')
    @sides = Dish.where(category: 'Side')
    @kids = Dish.where(category: 'Kids')
  end

  def new

  end

  def edit
    @dish = Dish.find(params[:id])
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def create
    @dish = Dish.new(dish_params)
    @dish.update(status: "active")
    
    if @dish.save
      flash[:notice] = "Your dish has been added"
      redirect_to manage_path
    else
      flash[:alert] = "There was a problem with your dish"
      redirect_to new_dish_path
    end
  end

  def update
    @dish = Dish.find(params[:id])
    if @dish.update(dish_params)
      flash[:notice] = "Dish updated!"
      redirect_to manage_path
    else
      render 'edit'
    end
  end

  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy
    flash[:alert] = "Dish has been deleted"
    redirect_to manage_path
  end

  private

  def dish_params
    params.require(:dish).permit(:category, :title, :description, :price)
  end

end
