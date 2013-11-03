// For more information see: http://emberjs.com/guides/routing/

App.Router.map(function() {
  // this.resource('posts');
  this.resource('about');
  this.resource('posts', function () {
    this.route('new');
  });
  this.route('post', { path: '/post/:post_id'} );
});
