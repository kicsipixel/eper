require "eper/version"
require "faraday"
require "json"

module Eper
  class Error < StandardError; end
  def self.version
  	Eper::VERSION
  end

  def self.api_key
  	ENV["football_data_api_key"]
  end

  def self.base_url
  	base_url = Eper::API_ENDPOINT + Eper::API_VERSION
  end

  def self.competition_url(id)
  	competition_url = base_url + "/competitions/#{id}/standings"
  end

  def self.header
  	load_header = {"X-Auth-Token" => api_key, "X-Response-Control" => "full"}
  end

  def self.connection(id)
	connection = Faraday.new(url: competition_url(id) , headers: header ).get
	response = JSON.parse(connection.body)
  end

end
