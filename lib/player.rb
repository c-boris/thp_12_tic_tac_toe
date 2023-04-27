class Player
  attr_reader :name, :value

  def initialize(value)
    @value = value
    ask_name
  end

  def ask_name
    puts "Nom du joueur représenté par #{@value} ?"
    print ">"
    @name = gets.chomp
  end
end