Rails.application.routes.draw do

devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}
 scope module:  :public do
  root to: 'homes#top'
  get 'homes/about' => 'homes#about',as: 'about'
  resources :cafes,only: [:index, :show,]
  get 'customers/my_page'=> 'customers#show'
  get 'customers/infomation/edit'=> 'customers#edit'
  patch 'customers/infomation' => 'customers#update'
  get 'customers/unsubscribe' => 'customers#unsubscribe'
  patch 'customers/withdrawal'  => 'customers#withdrawal'
  resources :posts,only:[:new,:index,:update,:show,:create,:destroy]
  resources :cafe_ratings,only:[:create]
  resources :likes,only:[:create,:destroy]
  resources :cafes do
    resources :comments,only:[:index,:edit,:show,:create]
    collection do
     get 'search'
    end
  end
  resources :relationships,only:[:index,:create,:destroy]
  get 'relationships/followings'=> 'relationships#followings'
  get 'relationships/followers'=> 'relationships#followers'

  # post 'orders/confirm' => 'orders#confirm'
  # get 'orders/confirm' => 'orders#confirm'
  # get 'orders/complete' => 'orders#complete'
  get '/like_notifications'=> 'like_notifications#index'
  get '/comment_notifications'=> 'comment_notifications#index'


end


devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
 namespace :admin do
 root to: 'homes#top'

 resources :cafes,only:[:index,:new,:edit,:create,:show,:update,:destroy]
 resources :customer_posts,only:[:index,:edit,:show,:update,]
 resources :facilities,only:[:index,:edit,:create,:update,]
 resources :customers,only:[:index,:show,:edit,:update]
  resources :cafes do
    collection do
     get 'search'
    end
  end
 end
Rails.application.routes.draw do
end
 end
