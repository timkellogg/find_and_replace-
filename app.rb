require('sinatra')
# require('sinatra-contrib')
require('./lib/find_and_replace')

get('/') do
  erb(:index)
end

get('/find_and_replace') do
  # method that we apply to the text
  @word_to_find    = params.fetch("find")
  @word_to_replace = params.fetch("replace")

  @output = params.fetch("user_input").find_and_replace(@word_to_find, @word_to_replace)
  erb(:find_and_replace)
end
