# require 'open-uri'
# require 'json'

module Services
  class Commits
    URL = 'https://api.github.com/repos/igorsimdyanov/rspec/commits'.freeze

    def self.call
      response = Net::HTTP.get_response(URI(URL))
      commits = JSON.load(response.body)
      commits.size
    end
  end
end
