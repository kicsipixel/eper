require "eper/version"

module Eper
  class Error < StandardError; end
  def self.version
  	Eper::VERSION
  end
end
