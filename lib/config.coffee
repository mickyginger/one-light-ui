module.exports =

  apply: ->

    root = document.documentElement


    # Font Size
    setFontSize = (currentFontSize) ->
      if 10 <= currentFontSize <= 20
        root.style.fontSize = currentFontSize + 'px'
      else if currentFontSize is ''
        root.style.fontSize = ''

    atom.config.onDidChange 'one-light-ui.fontSize', ->
      setFontSize(atom.config.get('one-light-ui.fontSize'))

    setFontSize(atom.config.get('one-light-ui.fontSize'))


    # Layout Mode
    setLayoutMode = (layoutMode) ->
      root.setAttribute('theme-one-light-ui-layoutmode', layoutMode.toLowerCase())

    atom.config.onDidChange 'one-light-ui.layoutMode', ->
      setLayoutMode(atom.config.get('one-light-ui.layoutMode'))

    setLayoutMode(atom.config.get('one-light-ui.layoutMode'))
