Rails.application.routes.draw do
  namespace 'v1' do
    resources :carpool,:user,:trip
  end
  root "topics#index"
  root 'main#index'
end
