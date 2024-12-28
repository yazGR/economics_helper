Rails.application.routes.draw do
  
  namespace :admin do
    scope "/:locale" do
      resources :users
      resources :type_incomes_users
      resources :type_incomes
      resources :expenses
      resources :type_expenses_users
      resources :type_expenses
      resources :incomes
    end 
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   
end
