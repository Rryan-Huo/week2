Myapp::Application.routes.draw do
  get "/greet", :controller => "greet", :action => "greeting"
  match 'my_favorites' => 'favorites#show', :as => "favorites"
  
end
