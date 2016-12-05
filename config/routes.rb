Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'results#index'

  namespace :results do
    get 'get_result'
  end
end
