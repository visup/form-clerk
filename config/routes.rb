Rails.application.routes.draw do
  devise_for :users

  with_options defaults: { format: 'json' }, constraints: { format: 'json' } do
    resources :forms do
      post 's', on: :member, as: :submit
    end
  end

  get 'app', to: 'pages#app'
  root to: 'pages#index'
end
