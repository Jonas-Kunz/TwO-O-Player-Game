class Game

  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
  end

  def validate_answer(player, player_input, answer)
    puts "#{player_input}, #{answer}"
    if (player_input.to_s == answer.to_s)
      player.score += 1
      puts "#{player.name} thats Correct!"
    else
      player.lives -= 1
      puts "what is it with you and failure #{player.name}?"
    end
  end

  def ask_question(player, other_player, round)
    puts "--- ROUND #{round} ---"
    question = Question.new
    puts "#{player.name} #{question.question}"
    answer = gets.chomp
    validate_answer(player, answer, question.answer)
    puts "#{player.name}: #{player.lives}/3 VS #{other_player.name}: #{other_player.lives}/3"
  end

  def run_game
    round = 0
    while (@player1.lives > 0 && @player2.lives > 0)
      if (round === 0) 
        puts "╰(*°▽°*)╯ Welcome to my mean math game, NO CALCULATORS ALLOWED! ╰(*°▽°*)╯"
        puts " If you come across a division question round to 1 decimal place"
        round += 1
      elsif (round % 2 != 0)
        ask_question(@player1, @player2, round)
        round += 1
      elsif (round % 2 == 0 && round < 20) 
        ask_question(@player2, @player1, round)
        round += 1
      end

      if(@player1.lives === 0 || @player2.lives === 0)
        winner = ""
        life_String = ""
        if (@player1.score > @player2.score)
          winner = @player1
        else 
          winner = @player2
        end
  
        if (winner.lives > 1)
          life_String = "lives"
        else
          life_String = "life"
        end
        puts "------------------------------------ GAME OVER --------------------------------------------------"
        puts "#{winner.name} wins with a score of #{winner.score} and #{winner.lives} #{life_String} remaining!"
        puts "----------------------- WOULD YOU LIKE A CHANCE AT A REMATCH? (y/n) -----------------------------" 
        rematch = gets.chomp
        if (rematch == "y") 
          new_game = Game.new(@player1.name, @player2.name).run_game
        end
        return
      end 
    end
  end

end


