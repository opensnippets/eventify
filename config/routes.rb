Rails.application.routes.draw do
  
  resources :events do
    resources :event_registrations, only: [:create, :destroy]
  end
  get 'dashboard/index'
  devise_for :users
  root 'static_pages#home'

  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'

  scope module: 'admins', as: 'admins', path: '/admins' do
	 get 'dashboard', to: 'dashboard#index', as: 'root'
  end
  resources :venues do
    resources :albums
  end

  resources :reviews

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
