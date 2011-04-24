Engine::Application.routes.draw do
  namespace :gem_tutorial do
    match '/' => 'main#index'
  end
end
