class Waiter
  def greet_guest
    p "Good day, welcome to our pizzeria!"
  end
  def serve_guest
    p "What can I order for you?"
    p "1. Would you like to order a pizza?"
    p "2. If not, what are you even doing here?"
    choice = gets.chomp.to_i
    take_order(choice)
  end
  def take_order(order_number)
    case order_number
    when 1
      p "Let me get the menu"
      list_menu
    when 2
     p  "Thank you for your visit"
    else
      p "I really don't understand"
  end
  end
  def initialize(menu)
    @menu = menu
  end
  def list_menu
    @menu.contents.each do |dish|
      p "#{dish.name}"
    end
  end
end
