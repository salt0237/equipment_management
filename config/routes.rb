Rails.application.routes.draw do
  get 'furnitures/index'
  namespace :api do
    namespace :v1 do
      get 'people', to: 'people#index'
      post 'people', to: 'people#create'
      get 'people/:id', to: 'people#read'
      delete 'people/:id', to: 'people#destroy'
 
      get 'mln', to:'machine_list_new#index'
      post 'mln', to: 'machine_list_new#create'
      get 'mln/:id', to: 'machine_list_new#read'
      delete 'mln/:id', to: 'machine_list_new#destroy'
#furniture
      get 'furniture', to:'furnitures#index'
      post 'furniture', to: 'furnitures#create'
      get 'furniture/:id', to: 'furnitures#read'
      delete 'furniture/:id', to: 'furnitures#destroy'
#license
      get 'license', to:'licenses#index'
      post 'license', to: 'licenses#create'
      get 'license/:id', to: 'licenses#read'
      delete 'license/:id', to: 'licenses#destroy'
#consumable
      get 'consumable', to:'consumables#index'
      post 'consumable', to: 'consumables#create'
      get 'consumable/:id', to: 'consumables#read'
      delete 'consumable/:id', to: 'consumables#destroy'

    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
