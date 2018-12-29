Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home' #home page is now set to the root
  get 'about', to: 'welcome#about'

end
