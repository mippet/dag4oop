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

  def take_order (order_number)
    case order_number
    when 1
      p "let me get the menu"
      list_menu
    when 2
      p "thank you for your visit"
    else
      p "I really don't understand"
    end
  end

  def initialize (menu)
    @menu = menu
  end

  def list_menu
  @menu.contents.each do |recipe|
    p "#{recipe.name}"
  end
end
end
