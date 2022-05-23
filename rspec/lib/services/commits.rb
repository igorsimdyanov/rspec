require 'open-uri'
require 'json'

module Services
  class Commits
    URL = 'https://api.github.com/repos/igorsimdyanov/rspec/commits'.freeze

    def self.call
      commits = JSON.load(URI.open(URL))
      commits.size
    end
  end
end
