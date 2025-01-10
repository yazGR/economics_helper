Rails.application.routes.draw do
  
  scope "/:locale" do
    root to: "web/public#home"

    namespace :admin do    
      resources :users
      resources :family_members
      resources :type_incomes_users
      resources :type_incomes
      resources :expenses
      resources :type_expenses_users
      resources :type_expenses
      resources :incomes
      resources :payment_methods
    end

    scope module: 'web' do
      resources :user_sessions, only: [:new, :create]
    end
  end  
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   
end
