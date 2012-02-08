IsWhen::Application.routes.draw do
  match "", to: "events#index", constraints: { subdomain: 'www' }
  match "", to: "events#show", constraints: { subdomain: /.+/ }

  root to: "events#index"
end
