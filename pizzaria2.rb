require './Waiter'
require './Menu'
require './Kitchen'

menu = Menu.new
kitchen = Kitchen.new
w = Waiter.new(menu, kitchen)

w.greet_guest

w.serve_guest
