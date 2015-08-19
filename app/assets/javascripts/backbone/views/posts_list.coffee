class BackboneApp.Views.PostsList extends Backbone.View
  
  template: JST["backbone/templates/posts"]
  collection: new BackboneApp.Collections.PostsCollection

  el: "#posts_wrapper"

  ui:
    list: "ul#posts_list"

  initialize: ->
    @render()

  render: ->
    @$el.html @template @
    @populate_list()

  populate_list: ->
    @collection.fetch success: (collection, response) =>
      _.each collection.models, (model) =>
        postTemplate = JST["backbone/templates/posts_list_item"](model.toJSON())
        $(@ui.list).append(postTemplate);
