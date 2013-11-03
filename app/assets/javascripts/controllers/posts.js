App.PostsNewController= Ember.Controller.extend({
  actions: {
    save: function () {
      var title = this.get('title');
      var description = this.get('description');
      var store = this.get('store');
      var record = {
        title: title,
        description: description
      }
      this.set('model', App.Post.createRecord(record));

      store.commit();
      this.transitionToRoute('posts');
    }
  }
});

App.PostController= Ember.ObjectController.extend({
  isEditing: false,

  actions: {
    save: function () {
      this.get('store').commit();
      this.set('isEditing', false);
    },
    edit: function () {
      this.set('isEditing', true);
    },
    cancel: function () {
      this.set('isEditing', false);
    }
  }
});
