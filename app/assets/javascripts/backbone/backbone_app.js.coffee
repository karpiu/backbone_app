#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.BackboneApp =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}

# enable Backbone.Validation
_.extend(Backbone.Model.prototype, Backbone.Validation.mixin);
