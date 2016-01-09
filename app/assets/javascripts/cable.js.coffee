//= require action_cable
//= require_self
//= require_tree ./channels

@App ||= {}
App.cable = ActionCable.createConsumer()
#App.cable = ActionCable.createConsumer "ws://127.0.0.1:28080"
