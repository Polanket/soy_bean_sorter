Rails.application.routes.draw do
  resources :soy_beans, only: [:index, :show]
end
