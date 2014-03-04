// Generated by CoffeeScript 1.7.1
(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  window.mainPageView = (function(_super) {
    __extends(mainPageView, _super);

    function mainPageView() {
      return mainPageView.__super__.constructor.apply(this, arguments);
    }

    mainPageView.prototype.tagName = 'div';

    mainPageView.prototype.template = _.template($('mainPage').html());

    mainPageView.prototype.initialize = function() {
      this.render();
    };

    mainPageView.prototype.render = function() {
      this.$el.html(this.template(this.model.toJSON()));
      return this;
    };

    return mainPageView;

  })(Backbone.View);

}).call(this);

//# sourceMappingURL=mainPageView.map
