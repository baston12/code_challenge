
# frozen_string_literal: true

# .
Rails.application.routes.draw do
  root to: 'sales#index'

  resources :sales, only: %i[index new create] do
    collection do
      post 'create_from_file'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
