require './Waiter'
require './Menu'

w = Waiter.new(menu)
menu = Menu.new

w.greet_guest

w.serve_guest
