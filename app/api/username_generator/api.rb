module UsernameGenerator
  class API < Grape::API
    version 'v1', using: :path, vendor: 'username generator'
    format :json
    prefix :api

    resource do
      get :something_random do
        { asd: '22222' }
      end
    end
  end
end
