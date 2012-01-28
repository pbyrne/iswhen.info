IsWhen::Application.routes.draw do
  match "", to: "events#show", constraints: { subdomain: /.+/ }

  root to: "events#index"
end
