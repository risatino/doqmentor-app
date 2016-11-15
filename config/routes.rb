Rails.application.routes.draw do

  get '/' => 'clients#index'
  get '/clients' => 'clients#index'
  get '/clients/new' => 'clients#new'
  post '/clients' => 'clients#create'
  get '/clients/:id' => 'clients#show'
  get '/clients/:id/edit' => 'clients#edit'
  patch '/clients/:id' => 'clients#update'
  delete '/clients/:id' => 'clients#destroy'

  resources :leads

  get '/design-docs' => 'design_contracts#index'
  get '/design-docs/new' => 'design_contracts#new'
  post '/design-docs' => 'design_contracts#create'
  get '/design-docs/:id' => 'design_contracts#show'
  get '/design-docs/:id/edit' => 'design_contracts#edit'
  patch '/design-docs/:id' => 'design_contracts#update'
  get '/design-docs/:id/toggle' => 'design_contracts#toggle'
  delete '/design-docs/:id' => 'design_contracts#destroy'

  get '/music-docs' => 'music_contracts#index'
  get '/music-docs/new' => 'music_contracts#new'
  post '/music-docs' => 'music_contracts#create'
  get '/music-docs/:id' => 'music_contracts#show'
  get '/music-docs/:id/edit' => 'music_contracts#edit'
  patch '/music-docs/:id' => 'music_contracts#update'
  get '/music-docs/:id/toggle' => 'music_contracts#toggle'
  delete '/music-docs/:id' => 'music_contracts#destroy'

  get '/legal-docs' => 'legal_contracts#index'
  get '/legal-docs/new' => 'legal_contracts#new'
  post '/legal-docs' => 'legal_contracts#create'
  get '/legal-docs/:id' => 'legal_contracts#show'
  get '/legal-docs/:id/edit' => 'legal_contracts#edit'
  patch '/legal-docs/:id' => 'legal_contracts#update'
  get '/legal-docs/:id/toggle' => 'legal_contracts#toggle'
  delete '/legal-docs/:id' => 'legal_contracts#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  post '/gigs' => 'gigs#create'
  get '/gigs/:id' => 'gigs#show'

  post '/active_contracts' => 'active_contracts#create'
  get '/active_contracts' => 'active_contracts#index'
  delete '/active_contracts/:id' => 'active_contracts#destroy'
  
end
