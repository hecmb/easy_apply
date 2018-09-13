Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
end

	get 'add_applicant' => 'applicants#add_applicant'

	#get 'apply' => 'home#apply'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#home'
end
