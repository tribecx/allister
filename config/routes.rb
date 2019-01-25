Rails.application.routes.draw do
  resources :categories
  resources :products
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
  # get 'product', to: 'pages#product', as: 'product'
  
  scope "product" do
    resource :pages, :as => "product_detail"
  end

  devise_scope :admin do
    get 'admin', to: 'product_lines#index'
  end

end
