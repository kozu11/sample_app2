Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'blogs/new' => 'blogs#new'
  post 'blogs' => "blogs#create"
  get 'top' => 'blogs#top'
  get 'blogs' => 'blogs#index'
  get 'blogs/:id' => 'blogs#show', as:'blog'
  get 'blogs/:id/edit' => 'blogs#edit', as:'edit_blog'
  patch 'blogs/:id' => 'blogs#update', as:'update_blog'
  delete 'blogs/:id' => 'blogs#destroy', as:'destroy_blog'
end
