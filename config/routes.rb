Myrottenpotatoes::Application.routes.draw do
  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
  mount JasmineRails::Engine => '/specs', :as => 'jasmine'
  #resources :movies
  resources :movies do
  resources :reviews
end
  root :to => redirect('/movies')
end
