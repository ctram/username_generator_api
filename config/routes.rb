Rails.application.routes.draw do
  mount UsernameGenerator::API => '/'
end
