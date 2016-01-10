Rails.application.routes.draw do
  # Racine de l'application
  root to: 'home#index'

  # Montage des différents engines
  mount Raindrops::Engine, at: '/raindrops'

  # Serve websocket cable requests in-process
  mount ActionCable.server, at: '/cable'
end
