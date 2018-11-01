require 'faraday'
require 'json'

module Decathlon
  module Sports
    module Recommendations
      def self.get(id)
        response = Faraday.get("#{API_URL}/sports/#{id}/recommendations")
        JSON.parse(response.body)
      end
    end
  end
end
