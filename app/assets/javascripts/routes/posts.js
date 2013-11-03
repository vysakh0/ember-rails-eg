App.PostsRoute = Ember.Route.extend({
  model: function () {
    return App.Post.find();
  }

});

App.PostRoute = Ember.Route.extend({
  model: function (params) {
    return this.get('store').find('post', params.post_id);
  },
});
App.NewPostRoute = Ember.Route.extend({
  model: function (params) {
    return App.Post.createRecord();
  },
});
