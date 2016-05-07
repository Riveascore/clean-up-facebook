require 'koala'
require 'pry'
require 'pry-remote'
require 'pry-stack_explorer'

oauth_access_token = ENV['FACEBOOK_GRAPH_ACCESS_TOKKEN']

@graph = Koala::Facebook::API.new(oauth_access_token)

profile = @graph.get_object("me")
friends = @graph.get_connections("me", "friends")
binding.pry_remote
