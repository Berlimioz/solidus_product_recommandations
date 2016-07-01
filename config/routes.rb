Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :products do
      resources :product_recommendations
    end
  end
end
