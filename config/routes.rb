Rails.application.routes.draw do
  root 'pages#home'

  resources :posts, :shallow => true do
    resources :comments
  end

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  #devise_scope :user do
  #  delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  #end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
