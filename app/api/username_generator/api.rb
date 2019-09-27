module UsernameGenerator
  class API < Grape::API
    version 'v1', using: :path, vendor: 'username generator'
    format :json
    prefix :api

    resource do
      get :generate_random_username do
        options = { case: params[:case] }

        { username: Usernames.generate(options) }
      end
    end
  end
end
