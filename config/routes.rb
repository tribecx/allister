Rails.application.routes.draw do
  resources :product_lines
  devise_for :admins
  # Root path
  root 'pages#index'

  # Resources
  resources :pages

  # GET paths
  get '' => 'pages#index'
  get 'home' => 'pages#index'
  get 'agriculture_line' => 'pages#agriculture_line'
  get 'urban_line' => 'pages#urban_line'
  get 'nutrients_line' => 'pages#nutrients_line'
  get 'about_us' => 'pages#about_us'
  get 'contact_us' => 'pages#contact_us'
  get 'product' => 'pages#product'
  devise_scope :admin do
    get 'admin', to: 'devise/sessions#new'
  end

end
