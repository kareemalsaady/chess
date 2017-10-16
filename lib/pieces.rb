class Pieces
  attr_accessor :color, :x, :y, :current_position, :possible_moves, :unicode, :unicode_white, :unicode_black

  def switch_color
    if @color == "black"
      @color = "white"
      @unicode = @unicode_white
    elsif @color == "white"
      @color = "black"
      @unicode = @unicode_black
    end
  end

end

class Pawn < Pieces
  attr_accessor :attack
  def initialize(x,y)
    @x = x
    @y = y
    @current_position = ([x,y])
    @color = "black"
    @moves = []
    @attack = []
    @unicode = "\u265F"
    @unicode_white = "\u2659"
    @unicode_black = "\u265F"
  end

  def possible_moves
    moves = []
    @moves = moves << [x,y+1]
    @moves.reject! { |m| m[0]<0 || m[1]<0 || m[0]>7 || m[1]>7}
  end

  def attack
    attacks = []
    @attack =    attacks << [x+1,y+1]
                 attacks << [x-1,y+1]
    @attack.reject! { |m| m[0]<0 || m[1]<0 || m[0]>7 || m[1]>7}
  end
end

class Rook < Pieces
  def initialize(x,y)
    @x = x
    @y = y
    @current_position = ([x,y])
    @color = "black"
    @moves = []
    @unicode = "\u265C"
    @unicode_white = "\u2656"
    @unicode_black = "\u265C"
  end

  def possible_moves
    moves = []
    @moves = moves << [x,y+1]
             moves << [x,y+2]
             moves << [x,y+3]
             moves << [x,y+4]
             moves << [x,y+5]
             moves << [x,y+6]
             moves << [x,y+7]
             moves << [x+1,y]
             moves << [x+2,y]
             moves << [x+3,y]
             moves << [x+4,y]
             moves << [x+5,y]
             moves << [x+6,y]
             moves << [x+7,y]
    @moves.reject! { |m| m[0]<0 || m[1]<0 || m[0]>7 || m[1]>7}
  end
end

class Knight < Pieces
  def initialize(x,y)
    @x = x
    @y = y
    @current_position = ([x,y])
    @color = "black"
    @moves = []
    @unicode = "\u265E"
    @unicode_white = "\u2658"
    @unicode_black = "\u265E"
  end

  def possible_moves
    moves = []
    @moves = moves << [x+1,y+2]
             moves << [x+2,y+1]
             moves << [x+2,y-1]
             moves << [x+1,y-2]
             moves << [x-1,y-2]
             moves << [x-2,y-1]
             moves << [x-2,y+1]
             moves << [x-1,y+2]
    @moves.reject! { |m| m[0]<0 || m[1]<0 || m[0]>7 || m[1]>7}
  end
end

class Bishop < Pieces
  def initialize(x,y)
    @x = x
    @y = y
    @current_position = ([x,y])
    @color = "black"
    @moves = []
    @unicode = "\u265D"
    @unicode_white = "\u2657"
    @unicode_black = "\u265D"
  end

  def possible_moves
    moves = []
    @moves = moves << [x+1,y+1]
             moves << [x+2,y+2]
             moves << [x+3,y+3]
             moves << [x+4,y+4]
             moves << [x+5,y+5]
             moves << [x+6,y+6]
             moves << [x+7,y+7]

             moves << [x-1,y-1]
             moves << [x-2,y-2]
             moves << [x-3,y-3]
             moves << [x-4,y-4]
             moves << [x-5,y-5]
             moves << [x-6,y-6]
             moves << [x-7,y-7]

             moves << [x+1,y-1]
             moves << [x+2,y-2]
             moves << [x+3,y-3]
             moves << [x+4,y-4]
             moves << [x+5,y-5]
             moves << [x+6,y-6]
             moves << [x+7,y-7]

             moves << [x-1,y+1]
             moves << [x-2,y+2]
             moves << [x-3,y+3]
             moves << [x-4,y+4]
             moves << [x-5,y+5]
             moves << [x-6,y+6]
             moves << [x-7,y+7]

             moves << [x,y+1]
             moves << [x,y+2]
             moves << [x,y+3]
             moves << [x,y+4]
             moves << [x,y+5]
             moves << [x,y+6]
             moves << [x,y+7]
             moves << [x+1,y]
             moves << [x+2,y]
             moves << [x+3,y]
             moves << [x+4,y]
             moves << [x+5,y]
             moves << [x+6,y]
             moves << [x+7,y]
    @moves.reject! { |m| m[0]<0 || m[1]<0 || m[0]>7 || m[1]>7}
  end
end

class Queen < Pieces
  def initialize(x,y)
    @x = x
    @y = y
    @current_position = ([x,y])
    @color = "black"
    @moves = []
    @unicode = "\u265B"
    @unicode_white = "\u2655"
    @unicode_black = "\u265B"
  end

  def possible_moves
    moves = []
    @moves = moves << [x+1,y+1]
             moves << [x+2,y+2]
             moves << [x+3,y+3]
             moves << [x+4,y+4]
             moves << [x+5,y+5]
             moves << [x+6,y+6]
             moves << [x+7,y+7]

             moves << [x-1,y-1]
             moves << [x-2,y-2]
             moves << [x-3,y-3]
             moves << [x-4,y-4]
             moves << [x-5,y-5]
             moves << [x-6,y-6]
             moves << [x-7,y-7]

             moves << [x+1,y-1]
             moves << [x+2,y-2]
             moves << [x+3,y-3]
             moves << [x+4,y-4]
             moves << [x+5,y-5]
             moves << [x+6,y-6]
             moves << [x+7,y-7]

             moves << [x-1,y+1]
             moves << [x-2,y+2]
             moves << [x-3,y+3]
             moves << [x-4,y+4]
             moves << [x-5,y+5]
             moves << [x-6,y+6]
             moves << [x-7,y+7]


    @moves.reject! { |m| m[0]<0 || m[1]<0 || m[0]>7 || m[1]>7}
  end
end

class King < Pieces
  def initialize(x,y)
    @x = x
    @y = y
    @current_position = ([x,y])
    @color = "black"
    @moves = []
    @unicode = "\u265A"
    @unicode_white = "\u2654"
    @unicode_black = "\u265A"
  end

  def possible_moves
    moves = []
    @moves = moves << [x,y+1]
             moves << [x+1,y+1]
             moves << [x+1,y]
             moves << [x+1,y-1]
             moves << [x,y-1]
             moves << [x-1,y-1]
             moves << [x-1,y]
             moves << [x-1,y+1]

    @moves.reject! { |m| m[0]<0 || m[1]<0 || m[0]>7 || m[1]>7}
  end
end


t = King.new(4,3)
t.possible_moves
p t
puts t.unicode
t.switch_color
puts t.unicode
t.switch_color
puts t.unicode
