class DishesController < ApplicationController
  def index
    @dishes = Dish.all
    @soups = Dish.where(category: 'Soup')
    @salads = Dish.where(category: 'Salad')
    @caesars = Dish.where(category: 'Caesar')
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

    if current_user
      @user = User.find(current_user[:id])
    else
      flash[:notice] = "Please login or sign up"
      redirect_to login_path
    end

    @dishes = Dish.all
    @soups = Dish.where(category: 'Soup')
    @salads = Dish.where(category: 'Salad')
    @caesars = Dish.where(category: 'Caesar')
    @sandwiches = Dish.where(category: 'Sandwich')
    @seafood = Dish.where(category: 'Seafood Sandwich')
    @vegs = Dish.where(category: 'Veg Sandwich')
    @burgers = Dish.where(category: 'Burger')
    @desserts = Dish.where(category: 'Dessert')
    @beverages = Dish.where(category: 'Beverage')
    @toppings = Dish.where(category: 'Topping')
    @sides = Dish.where(category: 'Side')
    @kids = Dish.where(category: 'Kids')
    @cater_salads = Dish.where(category: 'cater_salad')
    @cater_caesar = Dish.where(category: 'cater_caesar')
    @cater_sandwiches = Dish.where(category: 'cater_sandwich')
    @vegetables = Dish.where(category: 'cater_veg')
    @extras = Dish.where(category: 'cater_extras')
    @meats = Dish.where(category: 'cater_meat')
    @poultries = Dish.where(category: 'cater_poultry')
    @pastas = Dish.where(category: 'cater_pasta')
  end

  def cater
    @cater_salads = Dish.where(category: 'cater_salad')
    @cater_caesar = Dish.where(category: 'cater_caesar')
    @cater_sandwiches = Dish.where(category: 'cater_sandwich')
    @vegetables = Dish.where(category: 'cater_veg')
    @extras = Dish.where(category: 'cater_extras')
    @meats = Dish.where(category: 'cater_meat')
    @poultries = Dish.where(category: 'cater_poultry')
    @pastas = Dish.where(category: 'cater_pasta')

  end

  def newcater

    if current_user
      @user = User.find(current_user[:id])
    else
      flash[:notice] = "Please login or sign up"
      redirect_to login_path
    end
  
  end

  def new

    if current_user
      @user = User.find(current_user[:id])
    else
      flash[:notice] = "Please login or sign up"
      redirect_to login_path
    end

  end

  def edit

    if current_user
      @user = User.find(current_user[:id])
    else
      flash[:notice] = "Please login or sign up"
      redirect_to login_path
    end

    @dish = Dish.find(params[:id])

  end

  def show
    @dish = Dish.find(params[:id])
  end

  def activate
    @dish = Dish.find(params[:id])
    @dish.update(status: 'Active')
  end

  def deactivate
    @dish = Dish.find(params[:id])
    @dish.update(status: 'Inactive')
  end

  def create
    @dish = Dish.new(dish_params)
    @dish.update(status: "active")
    
    if @dish.save
      flash[:notice] = "Your dish has been added"
      redirect_to manage_path
    else
      flash[:alert] = "There was a problem with your dish"
      redirect_to manage_path
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
    params.require(:dish).permit(:category, :title, :description, :price, :half, :full, :unit, :status)
  end

end
