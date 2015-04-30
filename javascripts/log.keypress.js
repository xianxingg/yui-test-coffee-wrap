// Generated by CoffeeScript 1.9.2
(function() {
  window.onload = function() {
    return document.onkeypress = function(e) {
      var key, pairs, panel, ref;
      pairs = {
        'i': 1,
        'p': 2,
        'f': 3,
        's': 4
      };
      key = String.fromCharCode(e.which || e.keyCode);
      if (key.length > 0 && ((ref = Object.keys.call(null, pairs)) != null ? ref.indexOf(key) : void 0) > -1) {
        panel = document.getElementsByClassName('yui3-console-bd')[0];
        if (window.initialHeight == null) {
          window.initialHeight = panel.style.height;
        }
        document.getElementsByTagName('input')[pairs[key]].click();
        panel.style.height = 'auto';
        if (panel.offsetHeight < parseInt(window.initialHeight, 10)) {
          return panel.style.height = window.initialHeight;
        }
      }
    };
  };

}).call(this);