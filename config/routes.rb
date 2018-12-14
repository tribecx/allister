Rails.application.routes.draw do
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

end
