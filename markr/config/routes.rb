Markr::Application.routes.draw do
  resources :bookmarks

  root :to => 'pages#index'
  match 'happyfun' => 'pages#index'
end
