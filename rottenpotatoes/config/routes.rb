Rottenpotatoes::Application.routes.draw do
  #root 'movies#index'
  root :to => redirect('/movies')
  resources :movies do
    member do
      get 'same_directors' => 'movies#same_directors'
    end
  end
  #get "same_directors" => 'movies#same_directors'  
  #end  
  # map '/' to be a redirect to '/movies'
  #root :to => redirect('/movies')
end