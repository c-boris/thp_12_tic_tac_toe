class Show
  def show_board(board)
    system "clear"
    puts " #{board.cases[1].value.colorize(:light_yellow)} | #{board.cases[2].value.colorize(:light_yellow)} | #{board.cases[3].value.colorize(:light_yellow)} "
    puts "---+---+---"
    puts " #{board.cases[4].value.colorize(:light_yellow)} | #{board.cases[5].value.colorize(:light_yellow)} | #{board.cases[6].value.colorize(:light_yellow)} "
    puts "---+---+---"
    puts " #{board.cases[7].value.colorize(:light_yellow)} | #{board.cases[8].value.colorize(:light_yellow)} | #{board.cases[9].value.colorize(:light_yellow)} "
    puts " "
  end
end