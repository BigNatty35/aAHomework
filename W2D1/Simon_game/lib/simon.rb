class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @seq = []
    @sequence_length = 1
    @game_over = false
  end

  def play
    until game_over
    take_turn
    system ("clear")
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence

      unless @game_over
      round_success_message
    @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color
      sleep 0.75
      system("clear")
      sleep 0.25
    end
  end

  def require_sequence
    puts "Please repeat the sequence"
    @seq.each do |color|
      answer = gets.chomp
      if color != answer
        @game_over = true
        break
      end
    end
    sleep 0.25
  end

  def add_random_color
    @seq << COLORS.sample
    @sequence_length = @seq.length
  end

  def round_success_message
    puts "Good job!"
    puts "Time for round #{sequence_length + 1}!"

  end

  def game_over_message
    puts "You lost!"
    puts "Try harder next time!"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []

  end
end

if __FILE__ == $PROGRAM_NAME
  game = Simon.new
  game.play
end
