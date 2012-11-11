#= require jquery
#= require jquery_ujs
#= require bootstrap

# Batman.js and its adapters
#= require batman/es5-shim
#= require batman/batman
#= require batman/batman.jquery
#= require batman/batman.rails

#= require batman_rails_demo

#= require_tree ./batman/models
#= require_tree ./batman/controllers


#= require_tree .
# Run the Batman app
$(document).ready ->
  BatmanRailsDemo.run()
