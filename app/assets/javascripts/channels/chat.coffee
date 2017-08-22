App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->

  disconnected: ->

  received: (data) ->
    console.log(data)
    $('#messages').append '<li>' + data['message'] + '</li>'

  speak: (message) ->
    @perform 'speak', message: message

$(document).on 'keypress', '[data-behavior~=chat_input]', (event) ->
  if event.keyCode is 13 # return = send
    App.chat.speak event.target.value
    event.target.value = ''
    event.preventDefault()
