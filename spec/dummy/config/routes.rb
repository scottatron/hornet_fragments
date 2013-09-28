Rails.application.routes.draw do
  mount Hornet::Fragments::Engine => "/hornet/f"
end
