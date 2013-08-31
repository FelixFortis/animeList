AnimeList::Application.routes.draw do
  get 'static/home'

  match '/contact' => 'static#contact'
  match 'about' => 'static#about'

  root to: 'static#home'

end
