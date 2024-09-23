# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users do
    get "/users/sign_out" => "devise/sessions#destroy"
  end

  resources :projects do
    resources :comments
  end

  root to: "projects#index"
end
