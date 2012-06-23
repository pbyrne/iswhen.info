IsWhen::Application.routes.draw do
  get "iphone", as: :iphone, controller: :iphone, action: :index

  match "", to: "events#index", constraints: { subdomain: 'www' }
  match "", to: "events#show", constraints: { subdomain: /.+/ }

  root to: "events#index"
end
