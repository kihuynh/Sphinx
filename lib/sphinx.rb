#!/usr/bin/ruby

class Riddle
  def initialize(answer1, answer2, answer3)
    @answer1 = answer1
    @answer2 = answer2
    @answer3 = answer3
    @attempts = 0
  end

  def set_1
      if @answer1 != "silence" && @answer2 != "your name" && @answer3 != "the match" && @attempts == 4
        response = "Failure"
      elsif @answer1 != "silence" || @answer2 != "your name" || @answer3 != "the match" && @attempts < 4
        response = "Try Again"
      else
        response = "Success"
      end
     @attempts += 1
    end

end
