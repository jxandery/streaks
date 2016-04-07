Rails.application.routes.draw do

   root 'streaks#index'

   resources :streaks

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

end
