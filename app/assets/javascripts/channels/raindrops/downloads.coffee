App.cable.subscriptions.create "DownloadCreatedChannel",
# Called when the subscription is ready for use on the server
  connected: ->
    console.info "DownloadCreatedChannel"

App.cable.subscriptions.create "DownloadProgressedChannel",
# Called when the subscription is ready for use on the server
  connected: ->
    console.info "DownloadProgressedChannel"

App.cable.subscriptions.create "DownloadCompletedChannel",
# Called when the subscription is ready for use on the server
  connected: ->
    console.info "DownloadCompletedChannel"

App.cable.subscriptions.create "DownloadDestroyedChannel",
# Called when the subscription is ready for use on the server
  connected: ->
    console.info "DownloadDestroyedChannel"