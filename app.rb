require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/process_roll") do
  @number_of_dice = params.fetch("dice").to_i
  @number_of_sides = params.fetch("sides").to_i

  @rolls = []

  @number_of_dice.times do
    roll = rand(1..@number_of_sides)
    @rolls.push(roll)
  end

  erb(:process_roll)
end
