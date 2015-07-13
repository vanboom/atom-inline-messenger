class MessageView extends HTMLElement

  initialize: (msg) ->
    @classList.add('inline-message')

    badge = document.createElement('span')
    badge.textContent = msg.severity
    badge.classList.add("badge")
    badge.classList.add("severity-#{msg.severity}")
    @appendChild(badge)

    message = document.createElement('div')
    message.textContent = msg.content
    message.classList.add('message')
    @appendChild(message)
    
    this

  # Returns an object that can be retrieved when package is activated
  serialize: ->


  # Tear down any state and detach
  destroy: ->
    @element.remove()

  getElement: ->
    @element

fromMsg = (msg) ->
  MessageLine = new MessageElement()
  MessageLine.initialize(msg)
  MessageLine




module.exports = MessageElement = document.registerElement('inline-message', prototype: MessageView.prototype)
module.exports.fromMsg = fromMsg