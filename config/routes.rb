Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?


  resources :complex_tasks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
