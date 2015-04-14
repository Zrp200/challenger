require "singleton"
module Challenger
  class Race
    Human = Orc = new
    include Singleton
    attr_reader :stat
    def initialize(stat = Hash.new(0))
      @stat = stat
    end
  end
end
