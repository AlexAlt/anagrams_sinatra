require('sinatra')
require('sinatra/reloader')
require('./lib/granama')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/anagram_page') do
  @anagram_reveal = params.fetch("word_input").anagram(params.fetch("list_input"))
  erb(:anagram)
end
