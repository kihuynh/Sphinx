require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/sphinx')

get('/') do
  erb(:input)
end


get('/output') do
  @answer1 = params.fetch("riddle-1")
  @answer2 = params.fetch("riddle-2")
  @answer3 = params.fetch("riddle-3")

  outcome = Riddle.new(@answer1, @answer2, @answer3)

  @display_outcome = outcome.set_1

  erb(:output)
end
