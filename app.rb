require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/sphinx')
require('pry')

get('/') do

  questions = Riddle.new(@answer1, @answer2, @answer3)
  display_riddle1 = questions.random_riddles()
  @display_riddle1 = display_riddle1[0]

  display_riddle2 = questions.random_riddles()
  @display_riddle2 = display_riddle2[0]

  display_riddle3 = questions.random_riddles()
  @display_riddle3 = display_riddle3[0]
 erb(:input)
end


get('/output') do
  @answer1 = params.fetch("riddle-1")
  @answer2 = params.fetch("riddle-2")
  @answer3 = params.fetch("riddle-3")

  answers = Riddle.new(@answer1, @answer2, @answer3)

  answer_riddle1 = answers.random_riddles()
  @answer_riddle1 = answer_riddle1[1]
  answer_riddle2 = answers.random_riddles()
  @answer_riddle2 = answer_riddle2[1]
  answer_riddle3= answers.random_riddles()
  @answer_riddle3 = answer_riddle3[1]

  erb(:output)
end
