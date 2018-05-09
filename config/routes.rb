Rails.application.routes.draw do
  get 'transaction/user_registered'

  get 'transaction/sale'

  get 'transaction/buy'

  get 'transaction/comunity'

  get 'transaction/controller'

  root 'pages#index'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
