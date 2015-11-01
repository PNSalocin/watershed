Rails.application.routes.draw do

  mount Ripples::Engine => '/ripples'
  mount Raindrops::Engine => '/raindrops'

end
