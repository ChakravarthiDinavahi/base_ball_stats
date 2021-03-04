Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/base_ball_stats", to: "base_ball_stats#index"

end
