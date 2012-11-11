class BatmanRailsDemo.PostsController extends Batman.Controller
  routingKey: 'posts'

  index: (params) ->
    BatmanRailsDemo.Post.load (err, results) =>
      @set 'posts', results
