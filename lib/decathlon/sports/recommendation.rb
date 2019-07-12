require 'faraday'
require 'json'

module Decathlon
  module Sports
    module Recommendations
      def self.get(id)
        response = Faraday.get("#{API_URL}/sports/#{id}/recommendations")
        JSON.parse(response.body)
      end

      def self.location(coordinates, source = 'popular', limit = 10)
        response = Faraday.get("#{API_URL}/sports/recommendations?coordinates=#{coordinates[:lon]},#{coordinates[:lat]}&source=#{source}&count=#{limit}")
        JSON.parse(response.body)
      end
    end
  end
end
