Rails.application.routes.draw do
  root 'posts#index'
  post 'posts' => 'posts#create', as: 'create_post'
  put 'posts/:id' => 'posts#update', as: 'update_post'
  delete 'posts/:id' => 'posts#delete', as: 'post_delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
