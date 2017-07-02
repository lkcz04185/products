Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'start_page#index'
  resources :products do
    resources :variants
  end

  resources :receipts
end
