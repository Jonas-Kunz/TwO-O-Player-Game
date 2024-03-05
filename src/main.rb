require_relative "./classes/game"
require_relative "./classes/player"
require_relative "./classes/questions"

def start_game
  puts "-------------------------------------- PLEASE ENTER NAME FOR PLAYER 1 ------------------------------------------------"
  player1 = gets.chomp
  puts "-------------------------------------- PLEASE ENTER NAME FOR PLAYER 2 ------------------------------------------------"
  player2 = gets.chomp
  Game.new(player1, player2).run_game
end

new_game = start_game