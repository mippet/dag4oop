class Waiter
  def greet_guest
    p "Good day, welcome to our lovely restaurant"
  end

  def serve_guest
    p "How can I be of service?"
    p "1. Would you like te order a pizza?"
    p "2. Would you like to leave?"
    choice = gets.chomp.to_i
    take_order(choice)
  end

  def take_order(order_number)
    case order_number
    when 1
      p "let me get the menu"
      list_menu
      order_food(gets.chomp.to_i)
    when 2
      p "thank you for your visit"
    else
      p "I really don't understand"
    end
  end

  def initialize(menu, kitchen)
    @menu = menu
    @kitchen = kitchen
  end

  def list_menu
    @menu.contents.each_with_index do |recipe, index|
      p "#{index + 1}: #{recipe.name}"
    end
  end

  def order_food(choice)
    dish = @menu.contents[choice]
    @kitchen.order(dish)
  end
end
