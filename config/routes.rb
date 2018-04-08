Rails.application.routes.draw do
  get 'tweets' => 'tweets#index'
  get 'tweets' => 'tweets#new'
end
