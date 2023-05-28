Rails.application.routes.draw do

  devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: "public/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :public do
    root to: 'homes#top'
    resources :invitations, only[:new, :index, :show, :edit, :create, :update, :destory]
  end

  devise_for :admins,skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

  namespace :admin do
    get 'homes/top'
    resources :invitations, only[:new, :index, :show, :edit, :create, :update, :destory]
  end

end
