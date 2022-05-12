module Services
  class BlockGenerator
    def self.call
      yield
    end
  end
end
