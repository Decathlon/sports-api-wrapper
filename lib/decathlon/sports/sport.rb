require 'faraday'
require 'json'

API_URL = 'https://sports.api.decathlon.com'.freeze

module Decathlon
  module Sports
    def self.call(url: API_URL, params: {}, headers: {})
      response = Faraday.get(url, params, headers)
      JSON.parse(response.body)
    end

    def self.all(url: "#{API_URL}/sports", params: {}, headers: {})
      call(url: url, params: params, headers: headers)
    end

    def self.find(id, params: {}, headers: {})
      call(url: "#{API_URL}/sports/#{id}", params: params, headers: headers)
    end

    def self.search(query, params: {}, headers: {})
      call(url: "#{API_URL}/sports?q=#{query}", params: params, headers: headers)
    end

    def self.isearch(query, params: {}, headers: {})
      call(url: "#{API_URL}/sports/search/#{query}", params: params, headers: headers)
    end

    def groups
      call(url: "#{API_URL}/groups")
    end

    def group(id)
      call(url: "#{API_URL}/groups/#{id}")
    end
  end
end
