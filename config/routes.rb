ActionController::Routing::Routes.draw do |map|
  map.signup 'signup', :controller => 'users', :action => 'new'
  map.logout 'logout', :controller => 'sessions', :action => 'destroy'
  map.login 'login', :controller => 'sessions', :action => 'new'
  map.resources :sessions

  map.resources :users

  map.resources :assets, :has_many => :votes
  map.about_us 'about', :controller => 'home', :action => 'about_us'
  map.root :controller => "assets"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
