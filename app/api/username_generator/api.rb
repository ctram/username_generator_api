module UsernameGenerator
  class API < Grape::API
    version 'v1', using: :path, vendor: 'username generator'
    format :json
    prefix :api

    resource do
      get :generate_random_username do
        num_usernames_to_show = params.delete(:num_usernames_to_show).to_i

        { usernames: Usernames.generate_usernames(num_usernames_to_show, params)
        }
      end
    end
  end
end
