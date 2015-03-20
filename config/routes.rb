Rails.application.routes.draw do
  post 's', controller: :forms, action: :submit
end
