require 'HTTParty'

class Recipes
	include HTTParty

	ENV["FOOD2FORK_KEY"] = 'a3c9eb22c5777431ebaa00bfd50ff67e'
	ENV["FOOD2FORK_SERVER_AND_PORT"] = "http://food2fork.com/api/"
	base_uri 'http://food2fork.com/api/'
	default_params key: ENV["FOOD2FORK_KEY"]
	format :json

	def self.for (keyword)
		get("/search",  query: { q: keyword})["recipes"]
	end
end