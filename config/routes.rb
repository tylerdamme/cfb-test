Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # get "/teams" => "teams#index"
      get "/conferences" => "conferences#index"
    end
  end
end
