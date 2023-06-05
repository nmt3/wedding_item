Rails.application.routes.draw do

  namespace :admin do
    get 'profile/index'
    get 'profile/show'
    get 'profile/edit'
    get 'profile/new'
  end
  namespace :public do
    get 'profile/index'
    get 'profile/show'
    get 'profile/edit'
    get 'profile/new'
  end
  namespace :public do
    get 'menus/index'
    get 'menus/show'
    get 'menus/edit'
    get 'menus/new'
  end
  namespace :admin do
    get 'menus/index'
    get 'menus/show'
    get 'menus/edit'
    get 'menus/new'
  end
  namespace :admin do
    get 'tables/index'
    get 'tables/show'
    get 'tables/edit'
    get 'tables/new'
  end
  namespace :public do
    get 'tables/index'
    get 'tables/show'
    get 'tables/edit'
    get 'tables/new'
  end
  devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: "public/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope module: :public do
    root to: 'homes#top'
    resources :invitations, only: [:new, :index, :show, :edit, :create, :update, :destory]
  end

  devise_for :admins,skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

  namespace :admin do
    get 'homes/top'
    resources :invitations, only: [:new, :index, :show, :edit, :create, :update, :destory]
  end

end
