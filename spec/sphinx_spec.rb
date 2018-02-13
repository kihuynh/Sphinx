require('rspec')
require('sphinx')
require('pry')

describe('sphinx') do

  it("checks if answers are correct") do
  passed = Riddle.new("silence", "your name", "the match")
  expect(passed.check_answers).to(eq("Success"))
  end

  it("checks if failure") do
  failed = Riddle.new("loudness", "my name", "the candle")
  expect(failed.check_answers).to(eq("Failure"))
  end



end
