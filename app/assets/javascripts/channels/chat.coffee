App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->

  disconnected: ->

  received: (data) ->
    console.log(data)

  speak: (message) ->
    @perform 'speak', message: message
