require './Dish'

class Menu
  def initialize (dish_name)
    @menu = []
    @menu << Dish.new("Margherita")
    @menu << Dish.new("Napoletana")
    @menu << Dish.new("Peperoni")
  end

  def contents
    @menu
  end 
end
