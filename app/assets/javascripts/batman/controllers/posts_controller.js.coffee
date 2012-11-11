class BatmanRailsDemo.PostsController extends Batman.Controller
  routingKey: 'posts'

  index: (params) ->
    BatmanRailsDemo.Post.load (err, results) =>
      @set 'posts', results

  show: (params) ->
    @set 'post', BatmanRailsDemo.Post.find parseInt(params.id, 10), (err) ->
      throw err if err

    @render source: 'posts/show'
