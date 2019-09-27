module UsernameGenerator
  class API < Grape::API
    version 'v1', using: :path, vendor: 'username generator'
    format :json
    prefix :api

    resource do
      get :generate_random_username do
        { username: Usernames.generate(params) }
      end
    end
  end
end
