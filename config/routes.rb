


Rails.application.routes.draw do
  unless Rails.env.production?
    root 'swagger#index'
    get 'api-docs' => 'swagger#json'
  end

  namespace :api do
    resources :posts
  end
end