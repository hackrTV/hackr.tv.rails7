Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # # Render dynamic PWA files from app/views/pwa/*
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  root "application#index"

  get "videos/index"
  get "videos/show"

  namespace :mobile do
    get "mobile", to: "base#index"
    get "videos/index"
    get "videos/show"
  end

  namespace :xeraen do
    get "/", to: "home#index"
    namespace :mobile do
      get "/", to: "base#index"
    end
  end
end
