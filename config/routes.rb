Rails.application.routes.draw do
  namespace :public do
    get 'homes/top'
  end
  namespace :admin do
    get 'homes/top'
  end
  namespace :admin do
    get 'invitations/index'
    get 'invitations/show'
    get 'invitations/edit'
    get 'invitations/new'
  end
  namespace :public do
    get 'invitations/index'
    get 'invitations/show'
    get 'invitations/edit'
    get 'invitations/new'
  end
  devise_for :admins
  devise_for :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
