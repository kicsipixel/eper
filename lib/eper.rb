require "eper/version"

module Eper
  class Error < StandardError; end
  def self.version
  	Eper::VERSION
  end

  def self.api_key
  	ENV['footbal_data_api_key']
  end

end
