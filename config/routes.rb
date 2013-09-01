AnimeList::Application.routes.draw do
  devise_for :users

  get 'static/home'

  match '/contact' => 'static#contact'
  match 'about' => 'static#about'

  root to: 'static#home'

end
