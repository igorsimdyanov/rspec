require 'singleton'

module Services
  class Settings
    include Singleton

    # def self.instance
    #   new
    # end

    def initialize
      @list = {}
    end

    attr_reader :list

    def [](key)
      list[key]
    end

    def []=(key, value)
      list[key] = value
    end
  end
end
