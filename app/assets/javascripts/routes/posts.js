EmberRailsAuth.PostsRoute = Ember.Route.extend({
  model: function () {
    return EmberRailsAuth.Post.find();
  }

});

EmberRailsAuth.PostRoute = Ember.Route.extend({
  model: function (params) {
    console.log("cool");
    return this.get('store').find('post', params.post_id);
  },
});
