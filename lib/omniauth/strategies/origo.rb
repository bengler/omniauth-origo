require 'omniauth-oauth2'
require 'multi_json'

module OmniAuth
  module Strategies
    class Origo < OmniAuth::Strategies::OAuth2

      option :name, "origo"

      option :client_options, {
        :site => 'http://secure.origo.no',
        :token_url => '/-/oauth/token',
        :authorize_url => '/-/oauth/authorize'
      }
      
      uid { raw_info['result']['user']['id'].to_s } # to_s to keep all values as strings
        
      info do 
        {
          'name' => raw_info['result']['user']['full_name'],
          'first_name' => raw_info['result']['user']['first_name'],
          'last_name' => raw_info['result']['user']['last_name'],
          'image' => raw_info['result']['user']['image_url'],
          'email' => raw_info['result']['user']['email'],
          'urls' => {
              'Origo' => "http://origo.no/-/user/show/#{raw_info['result']['user']['id']}"
          }
        }
      end

      extra do
        { 'raw_info' => raw_info }
      end
            
      def raw_info
        @raw_info ||= access_token.get('/-/api/v2/js/user').parsed
      end

    end
  end
end
