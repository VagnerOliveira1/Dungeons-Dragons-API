Rails.application.routes.draw do
  namespace :api, defaults:{format: :json} do
    namespace :v1, defaults:{format: :json} do
      resources :characters do
        resources :skills
      end
    end
  end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

