Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :seas

# , :only [:index, :create]
#
# resources :'/seas/new', :only :new
#
# resources :'/seas/:id', :only [:show, :update, :destroy]
#
# resources :'/seas/:id/edit', only: :edit

end
