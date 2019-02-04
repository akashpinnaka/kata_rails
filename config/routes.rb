Rails.application.routes.draw do
  root 'wrapper#wrap'
  resources :wrapper, only: [] do
  	collection do
  		get "wrap"
  	end
  end
end
