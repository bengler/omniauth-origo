require 'omniauth-oauth2'
require 'multi_json'

module OmniAuth
  module Strategies
    class Origo < OmniAuth::Strategies::OAuth2
      # Give your strategy a name.
      option :name, "origo"

      # This is where you pass the options you would pass when
      # initializing your consumer from the OAuth gem.
      option :client_options, {
        :site => 'https://secure.origo.no',
        :token_url => '/-/oauth/token',
        :authorize_url => '/-/oauth/authorize'
      }
      
      # These are called after authentication has succeeded. If
      # possible, you should try to set the UID without making
      # additional calls (if the user id is returned with the token
      # or as a URI parameter). This may not be possible with all
      # providers.
      uid{ user_data['result']['user']['id'].to_s }
        
      info do
        {
           'name' => user_data['result']['user']['full_name'],
           'first_name' => user_data['result']['user']['first_name'],
           'last_name' => user_data['result']['user']['last_name'],
           'image' => user_data['result']['user']['image_url'],
           'email' => user_data['result']['user']['email'],
           'urls' => {
             'Origo' => "http://origo.no/-/user/show/#{user_data['result']['user']['id']}"
           }
        }
      end

      extra do
        {
          'raw_info' => user_data
        }
      end
            
      def user_data
        @user_data ||= access_token.get('/-/api/v2/js/user').parsed
      end

    end
  end
end
