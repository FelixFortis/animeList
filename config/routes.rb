AnimeList::Application.routes.draw do
  resources :shows


  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

  match '/contact' => 'static#contact'
  match '/about' => 'static#about'

  root to: 'static#home'

end
