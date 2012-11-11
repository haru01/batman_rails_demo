class BatmanRailsDemo.PostsController extends Batman.Controller
  routingKey: 'posts'

  index: (params) ->
    BatmanRailsDemo.Post.load (err, results) =>
      @set 'posts', results

  show: (params) ->
    @set 'post', BatmanRailsDemo.Post.find parseInt(params.id, 10), (err) ->
      throw err if err

    @render source: 'posts/show'

  new: (params) ->
    @set 'post', new BatmanRailsDemo.Post()
    @form = @render()

  create: (params) ->
    @get('post').save (err) =>
      $('#new_post').attr('disabled', false)

      if err
        throw err unless err instanceof Batman.ErrorsSet
      else
        BatmanRailsDemo.flashSuccess "#{@get('post.title')} created successfully!"
        @redirect '/posts'
