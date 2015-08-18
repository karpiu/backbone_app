class BackboneApp.Models.Post extends Backbone.Model
  paramRoot: 'post'
  urlRoot: 'posts'

  defaults:
    title: "Title"
    body: "Body"

  validation:
    title: [
      {
        minLength: 3
      }
      {
        msg: "Title has to be at least 3 characters long"
      }
    ]

class BackboneApp.Collections.PostsCollection extends Backbone.Collection
  model: BackboneApp.Models.Post
  url: '/posts'
