require('rspec')
require('sphinx')
require('pry')

describe('sphinx') do

  it("checks if the first answer is correct") do
  first_passed = Riddle.new("silence", "your name", "the match", 0)
  expect(first_passed.set_1).to(eq("Success"))
  end

  it("responds 'try again' if the first attempt is wrong") do
  first_wrong = Riddle.new("not silence", "your name", "the match", 1)
  expect(first_wrong.set_1).to(eq("Try Again"))
  end

  # it("checks if answers are correct") do
  # passed = Riddle.new("silence", "your name", "the match")
  # expect(passed.check_answers).to(eq("Success"))
  # end
  #
  # it("checks if failure") do
  # failed = Riddle.new("loudness", "my name", "the candle")
  # expect(failed.check_answers).to(eq("Failure"))
  # end
  #
  # it("Gives another chance if answered incorrectly the first time") do
  # chances = Riddle.new("wrong", "your name", "the match")
  # expect(chances.check_answers).to(eq("Try Again"))
  # end

end
