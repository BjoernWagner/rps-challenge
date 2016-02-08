class Match

  attr_reader :selected_by_ai

  def initialize
  end

  def ai_selection
    ["Rock", "Paper", "Scissors"].sample
  end

  def declaration_of_winner
    if $selected_by_player == $selected_by_ai
      'Nobody'
    elsif $selected_by_player == 'Rock' && $selected_by_ai == 'Paper'
      'AI'
    elsif $selected_by_player == 'Rock' && $selected_by_ai == 'Scissors'
      'You'
    elsif $selected_by_player == 'Paper' && $selected_by_ai == 'Rock'
      'You'
    elsif $selected_by_player == 'Paper' && $selected_by_ai == 'Scissors'
      'AI'
    elsif $selected_by_player == 'Scissors' && $selected_by_ai == 'Rock'
      'AI'
    elsif $selected_by_player == 'Scissors' && $selected_by_ai == 'Paper'
      'You'
    end
  end

end

