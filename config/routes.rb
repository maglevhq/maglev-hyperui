Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  mount Maglev::Engine => '/maglev'
  get '(*path)', to: 'maglev/page_preview#index', defaults: { path: 'index' }, constraints: Maglev::PreviewConstraint.new
end
