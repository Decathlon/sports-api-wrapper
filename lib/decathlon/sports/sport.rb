require 'faraday'
require 'json'

API_URL = 'https://sports-decathlon.herokuapp.com'.freeze

module Decathlon
  module Sports
    def self.all
      response = Faraday.get("#{API_URL}/sports")
      JSON.parse(response.body)
    end

    def self.find(id)
      response = Faraday.get("#{API_URL}/sports/#{id}")
      JSON.parse(response.body)
    end
  end
end
