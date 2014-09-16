class TowersOfHanoi

  def initialize
    @tower1 = [3, 2, 1]
    @tower2 = []
    @tower3 = []
    @towers = [@tower1, @tower2, @tower3]
  end

  def play
    initialize
    print "Welcome to Towers of Hanoi\n"
    @player_name = self.prompt_user("Please enter your name: ")

    while !won?

      print_towers

      from = self.prompt_user("Choose tower to move disc from: ").to_i
      to = self.prompt_user("Choose tower to move disc to: ").to_i

      from_tower = @towers[from - 1]
      to_tower = @towers[to - 1]

      if valid_move?(from_tower, to_tower)
        move(from_tower, to_tower)
      else
        print "Invalid move.\n"
      end
    end

    print "Towers: #{@towers}\n"
    print "Congratulations #{@player_name}, you've moved all discs to another tower.\n"
  end

  def valid_move?(from_tower, to_tower)

    if from_tower.count > 0
      return true if to_tower.empty?
      return true if from_tower.last < to_tower.last
    end

    false
  end

  def move(from_tower, to_tower)
    disc = from_tower.pop
    to_tower << disc
  end

  def prompt_user(prompt)
    print prompt
    STDOUT.flush
    gets.chomp
  end

  def print_towers
    print "Tower 1: #{@tower1}\n"
    print "Tower 2: #{@tower2}\n"
    print "Tower 3: #{@tower3}\n"
  end

  def won?
    @tower2.count == 3 || @tower3.count == 3
  end

end

game = TowersOfHanoi.new
game.play