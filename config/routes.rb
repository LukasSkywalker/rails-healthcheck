Healthcheck::Engine.routes.draw do
  get :healthcheck, to: 'checks#show'
end
