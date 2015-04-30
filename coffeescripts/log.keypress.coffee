window.onload = ->
  document.onkeypress = (e) ->
    pairs = 'i': 1, 'p': 2, 'f': 3, 's': 4

    key = String.fromCharCode(e.which || e.keyCode)
    if key.length > 0 and Object.keys.call(null, pairs)?.indexOf(key) > -1
      panel = document.getElementsByClassName('yui3-console-bd')[0];
      window.initialHeight ?= panel.style.height
        
      document.getElementsByTagName('input')[pairs[key]].click()

      panel.style.height = 'auto'
      panel.style.height = window.initialHeight if panel.offsetHeight < parseInt window.initialHeight, 10
