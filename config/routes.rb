TddRails::Application.routes.draw do
  resources :competitions

  resources :teams do
  	member do
  		post 'enter_competition'
  	end
  end


end
