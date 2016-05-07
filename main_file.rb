require 'koala'
require 'pry'
require 'pry-remote'
require 'pry-stack_explorer'

oauth_access_token = ENV['FACEBOOK_GRAPH_ACCESS_TOKKEN']

@graph = Koala::Facebook::API.new(oauth_access_token)
#
# profile = @graph.get_object("me")
# friends = @graph.get_connections("me", "friends")
# binding.pry_remote

field_values = ['message', 'id', 'from', 'type', 'picture', 'link', 'created_time', 'updated_time']

max_items = 5000

hash_values = {
  limit: max_items,
  fields: field_values
}

client = Koala::Facebook::API.new(oauth_access_token)
stuff = client.get_connection('me', 'posts', hash_values)
