class Board
  attr_accessor :cases

  def initialize
    @cases = {}
    (1..9).each { |id| @cases[id] = BoardCase.new(id) }
  end

  def play_turn(player)
    puts "#{player.name}, choisissez une case à remplir (de 1 à 9) :"
    print ">"
    id = gets.chomp.to_i
    until (1..9).include?(id) && @cases[id].value == " "
      if ! (1..9).include?(id)
        puts "Choisissez un chiffre entre 1 et 9 :"
        print ">"
      else
        puts "Cette case est déjà prise, veuillez en choisir une autre :"
        print ">"
      end
      id = gets.chomp.to_i
    end
    @cases[id].value = player.value
  end

  def victory?
    winning_cases = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
    winning_cases.each do |line|
      if @cases[line[0]].value == @cases[line[1]].value && @cases[line[1]].value == @cases[line[2]].value && @cases[line[0]].value != " "
        return true
      end
    end
    return false
  end
end