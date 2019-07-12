require 'faraday'
require 'json'

API_URL = 'https://sports.api.decathlon.com'.freeze

module Decathlon
  module Sports
    def self.all
      call "#{API_URL}/sports"
    end

    def self.find(id)
      call "#{API_URL}/sports/#{id}"
    end

    def self.search(name)
      response = Faraday.get("#{API_URL}/sports?q=#{name}")
      JSON.parse(response.body)
    end

    def self.isearch(name)
      response = Faraday.get("#{API_URL}/sports/search/#{name}")
      JSON.parse(response.body)
    end

    def self.call(url)
      response = Faraday.get(url)
      JSON.parse(response.body)
    end

    def self.filter(**args)
      response = Faraday.get do |req|
        req.url "#{API_URL}/sports"
        req.params['tag'] = args[:tag] if args[:tag]
        req.params['decathlon_id'] = args[:decathlon_id] if args[:decathlon_id]
        req.params['parents_only'] = args[:parents_only] if args[:parents_only]
      end
      JSON.parse(response.body)
    end

    def groups
      call "#{API_URL}/groups"
    end

    def group(id)
      call "#{API_URL}/groups/#{id}"
    end
  end
end
