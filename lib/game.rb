class Game
  attr_accessor :board, :players, :current_player, :status

  def initialize
    @board = Board.new
    @players = [Player.new("X"), Player.new("O")]
    @current_player = @players[0]
    @status = "en cours"
  end

  def turn
    @board.play_turn(@current_player)
    Show.new.show_board(@board)
    if @board.victory?
      @status = @current_player
    elsif @board.cases.values.all? { |cell| cell.value != " " }
      @status = "match nul"
    else
      switch_player
    end
  end

  def switch_player
    @current_player = @current_player == @players[0] ? @players[1] : @players[0]
  end

  def new_round
    @board = Board.new
    @status = "en cours"
  end

  def game_end
    if @status == "match nul"
      puts " "
      puts "XOXOXOXOXOX"
      puts "Match nul !"
      puts "XOXOXOXOXOX"
      puts " "
    else
      puts " "
      puts "XOXOXOXOXOXOXOXOXOXOXOXOXOX"
      puts "#{current_player.name} remporte la partie !"
      puts "XOXOXOXOXOXOXOXOXOXOXOXOXOX"
      puts " "
    end
  end
end