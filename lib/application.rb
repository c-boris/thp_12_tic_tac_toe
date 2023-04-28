class Application
  def initialize
    system "clear"
    puts " "
    puts "XOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXO".colorize(:cyan)
    puts "Bienvenue dans le jeu du Morpion !"
    puts "XOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXO".colorize(:cyan)
    puts " "
    puts " 1 | 2 | 3 ".colorize(:green)
    puts "---+---+---".colorize(:green)
    puts " 4 | 5 | 6 ".colorize(:green)
    puts "---+---+---".colorize(:green)
    puts " 7 | 8 | 9 ".colorize(:green)
    puts " "
    @game = Game.new
  end

  def perform
    while @game.status == "en cours"
      @game.turn
    end
    @game.game_end
    while true
      puts "Voulez-vous faire une nouvelle partie ? (O/N)"
      print ">"
      answer = gets.chomp.upcase
      if answer == "O"
        @game.new_round
        perform
      elsif answer == "N"
        puts "Merci d'avoir joué, à bientôt !"
        break
      else
        puts "Je n'ai pas compris votre réponse."
      end
    end
  end
end