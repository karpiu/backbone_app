class BackboneApp.Views.PostForm extends Backbone.View

  template: JST["backbone/templates/post_form"]
  model: new BackboneApp.Models.Post
  
  el: "#post_form_wrapper"

  ui:
    form:  "#post_form"
    title: "#post_form_title"
    body:  "#post_form_body"

  events:
    "submit #post_form": "formSubmitted"

  initialize: ->
    Backbone.Validation.bind @
    @render()

  render: ->
    @$el.html @template @

  formSubmitted: (e) =>
    e.preventDefault()
    @model.save({ title: $(@ui.title).val(), body: $(@ui.body).val() })
