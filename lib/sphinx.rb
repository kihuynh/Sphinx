#!/usr/bin/ruby

class Riddle
  def initialize(answer1, answer2, answer3)
    @answer1 = answer1
    @answer2 = answer2
    @answer3 = answer3
  end

  def random_riddles
    output_array = []
    riddle_list = {
      1 => ["Poor people have it. Rich people need it. If you eat it you die. What is it?", "nothing"],
      2 => ["What is at the end of a rainbow?", "W"],
      3 => ["What starts with the letter 't', is filled with 't' and ends in 't'?", "teapot"],
      4 => ["What kind of tree can you carry in your hand?", "palm tree"],
      5 => ["How many months have 28 days?", "all of them"],
      6 => ["What breaks when you say it?", "silence"],
      7 => ["What is something that is yours, yet everyone uses it more than you?", "your name"],
      8 => ["You are locked in a cabin with no way out. It is so cold you will freeze to death if you don't stay warm. Inside are a stove, lantern and candle. You only have one match so what do you light first?", "the match"]
    }

    rand_num = rand(1..8)

    output_array = riddle_list[rand_num]

  end


end
