Rails.application.routes.draw do
	resources :pinns

	root "pinns#index"
end
