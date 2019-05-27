Rails.application.routes.draw do
  namespace 'v1' do
    resources :carpool
  end
  root "topics#index"
  root 'main#index'
end
