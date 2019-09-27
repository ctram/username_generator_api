module UsernameGenerator
  class API < Grape::API
    version 'v1', using: :path, vendor: 'username generator'
    format :json
    prefix :api

    resource do
      get :something_random do
        { username: Usernames.generate }
      end
    end
  end
end
