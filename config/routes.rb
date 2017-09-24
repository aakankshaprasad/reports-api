Rails.application.routes.draw do

  namespace :api do
    namespace :v1, defaults: { format: 'json' } do
      resources :reports
      resources :report_types
      resources :report_type_options
    end
  end

  namespace :admin do
    resources :report_type_options
    resources :report_types
  end

  resources :reports
  
  devise_for :users

  root to: 'reports#index'
end
