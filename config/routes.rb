Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/", to: "base_ball_stats#index"
  get "/gets", to: "base_ball_stats#gets"


end
