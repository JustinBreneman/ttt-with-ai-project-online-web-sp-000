module Players
  class Computer < Player

    def initialize(token)
      super
      @mc = 0
    end

    def move(board)
      @mc += 1
      if @token == "X"
        move_X(board)
      elsif @token == "O"
        move_O(board)
      end
    end

    def move_X(board)
      if @mc == 1
        ["1", "3", "7", "9"].sample
      elsif @mc == 2
        if board.cells[4] == " "
          "5"
        elsif board.cells[0] == "X"
          "9"
        elsif board.cells[2] == "X"
          "7"
        elsif board.cells[6] == "X"
          "3"
        elsif board.cells[8] == "X"
          "1"
        end
      elsif @mc == 3
        if board.cells[8] == " "
          "9"
        elsif board.cells[4] == " "
          "5"
        else
          if board.cells[0] == "O" && board.cells[4] == "O"
            "9"
          elsif board.cells[1] == "O" && board.cells[4] == "O"
            "8"
          elsif board.cells[2] == "O" && board.cells[4] == "O"
            "7"
          elsif board.cells[3] == "O" && board.cells[4] == "O"
            "6"
          elsif board.cells[5] == "O" && board.cells[4] == "O"
            "4"
          elsif board.cells[6] == "O" && board.cells[4] == "O"
            "3"
          elsif board.cells[7] == "O" && board.cells[4] == "O"
            "2"
          elsif board.cells[8] == "O" && board.cells[4] == "O"
            "1"
          end
        end
      elsif board.cells[0] == "X" && board.cells[1] == "X" && board.cells[2] == " "
        "3"
      elsif board.cells[0] == "X" && board.cells[2] == "X" && board.cells[1] == " "
        "2"
      elsif board.cells[0] == "X" && board.cells[3] == "X" && board.cells[6] == " "
        "7"
      elsif board.cells[0] == "X" && board.cells[4] == "X" && board.cells[8] == " "
        "9"
      elsif board.cells[0] == "X" && board.cells[6] == "X" && board.cells[3] == " "
        "4"
      elsif board.cells[0] == "X" && board.cells[8] == "X" && board.cells[4] == " "
        "5"
      elsif board.cells[1] == "X" && board.cells[2] == "X" && board.cells[0] == " "
        "1"
      elsif board.cells[1] == "X" && board.cells[4] == "X" && board.cells[7] == " "
        "8"
      elsif board.cells[1] == "X" && board.cells[7] == "X" && board.cells[4] == " "
        "5"
      elsif board.cells[2] == "X" && board.cells[4] == "X" && board.cells[6] == " "
        "7"
      elsif board.cells[2] == "X" && board.cells[5] == "X" && board.cells[8] == " "
        "9"
      elsif board.cells[2] == "X" && board.cells[6] == "X" && board.cells[4] == " "
        "5"
      elsif board.cells[2] == "X" && board.cells[8] == "X" && board.cells[5] == " "
        "6"
      elsif board.cells[3] == "X" && board.cells[4] == "X" && board.cells[5] == " "
        "6"
      elsif board.cells[3] == "X" && board.cells[5] == "X" && board.cells[4] == " "
        "5"
      elsif board.cells[3] == "X" && board.cells[6] == "X" && board.cells[0] == " "
        "1"
      elsif board.cells[5] == "X" && board.cells[4] == "X" && board.cells[3] == " "
        "4"
      elsif board.cells[5] == "X" && board.cells[8] == "X" && board.cells[2] == " "
        "3"
      elsif board.cells[6] == "X" && board.cells[4] == "X" && board.cells[2] == " "
        "3"
      elsif board.cells[6] == "X" && board.cells[7] == "X" && board.cells[8] == " "
        "9"
      elsif board.cells[6] == "X" && board.cells[3] == "X" && board.cells[0] == " "
        "1"
      elsif board.cells[6] == "X" && board.cells[0] == "X" && board.cells[3] == " "
        "4"
      elsif board.cells[6] == "X" && board.cells[8] == "X" && board.cells[7] == " "
        "8"
      elsif board.cells[7] == "X" && board.cells[4] == "X" && board.cells[1] == " "
        "2"
      elsif board.cells[7] == "X" && board.cells[1] == "X" && board.cells[4] == " "
        "5"
      elsif board.cells[8] == "X" && board.cells[4] == "X" && board.cells[0] == " "
        "1"
      elsif board.cells[8] == "X" && board.cells[7] == "X" && board.cells[6] == " "
        "7"
      elsif board.cells[0] == "O" && board.cells[1] == "O" && board.cells[2] == " "
        "3"
      elsif board.cells[0] == "O" && board.cells[2] == "O" && board.cells[1] == " "
        "2"
      elsif board.cells[0] == "O" && board.cells[3] == "O" && board.cells[6] == " "
        "7"
      elsif board.cells[0] == "O" && board.cells[4] == "O" && board.cells[8] == " "
        "9"
      elsif board.cells[0] == "O" && board.cells[6] == "O" && board.cells[3] == " "
        "4"
      elsif board.cells[0] == "O" && board.cells[8] == "O" && board.cells[4] == " "
        "5"
      elsif board.cells[1] == "O" && board.cells[2] == "O" && board.cells[0] == " "
        "1"
      elsif board.cells[1] == "O" && board.cells[4] == "O" && board.cells[7] == " "
        "8"
      elsif board.cells[1] == "O" && board.cells[7] == "O" && board.cells[4] == " "
        "5"
      elsif board.cells[2] == "O" && board.cells[4] == "O" && board.cells[6] == " "
        "7"
      elsif board.cells[2] == "O" && board.cells[5] == "O" && board.cells[8] == " "
        "9"
      elsif board.cells[2] == "O" && board.cells[6] == "O" && board.cells[4] == " "
        "5"
      elsif board.cells[2] == "O" && board.cells[8] == "O" && board.cells[5] == " "
        "6"
      elsif board.cells[3] == "O" && board.cells[4] == "O" && board.cells[5] == " "
        "6"
      elsif board.cells[3] == "O" && board.cells[5] == "O" && board.cells[4] == " "
        "5"
      elsif board.cells[3] == "O" && board.cells[6] == "O" && board.cells[0] == " "
        "1"
      elsif board.cells[5] == "O" && board.cells[4] == "O" && board.cells[3] == " "
        "4"
      elsif board.cells[5] == "O" && board.cells[8] == "O" && board.cells[2] == " "
        "3"
      elsif board.cells[6] == "O" && board.cells[4] == "O" && board.cells[2] == " "
        "3"
      elsif board.cells[6] == "O" && board.cells[7] == "O" && board.cells[8] == " "
        "9"
      elsif board.cells[6] == "O" && board.cells[3] == "O" && board.cells[0] == " "
        "1"
      elsif board.cells[6] == "O" && board.cells[0] == "O" && board.cells[3] == " "
        "4"
      elsif board.cells[6] == "O" && board.cells[8] == "O" && board.cells[7] == " "
        "8"
      elsif board.cells[7] == "O" && board.cells[4] == "O" && board.cells[1] == " "
        "2"
      elsif board.cells[7] == "O" && board.cells[1] == "O" && board.cells[4] == " "
        "5"
      elsif board.cells[8] == "O" && board.cells[4] == "O" && board.cells[0] == " "
        "1"
      elsif board.cells[8] == "O" && board.cells[7] == "O" && board.cells[6] == " "
        "7"
      else
        move = board.cells.index(" ")
        move += 1
        "#{move}"
      end
    end

    def move_O(board)
      if @mc == 1
        if board.cells[4] == "X"
          ["1", "3", "7", "9"].sample
        else
          "5"
        end
      elsif board.cells[0] == "O" && board.cells[1] == "O" && board.cells[2] == " "
        "3"
      elsif board.cells[0] == "O" && board.cells[2] == "O" && board.cells[1] == " "
        "2"
      elsif board.cells[0] == "O" && board.cells[3] == "O" && board.cells[6] == " "
        "7"
      elsif board.cells[0] == "O" && board.cells[4] == "O" && board.cells[8] == " "
        "9"
      elsif board.cells[0] == "O" && board.cells[6] == "O" && board.cells[3] == " "
        "4"
      elsif board.cells[0] == "O" && board.cells[8] == "O" && board.cells[4] == " "
        "5"
      elsif board.cells[1] == "O" && board.cells[2] == "O" && board.cells[0] == " "
        "1"
      elsif board.cells[1] == "O" && board.cells[4] == "O" && board.cells[7] == " "
        "8"
      elsif board.cells[1] == "O" && board.cells[7] == "O" && board.cells[4] == " "
        "5"
      elsif board.cells[2] == "O" && board.cells[4] == "O" && board.cells[6] == " "
        "7"
      elsif board.cells[2] == "O" && board.cells[5] == "O" && board.cells[8] == " "
        "9"
      elsif board.cells[2] == "O" && board.cells[6] == "O" && board.cells[4] == " "
        "5"
      elsif board.cells[2] == "O" && board.cells[8] == "O" && board.cells[5] == " "
        "6"
      elsif board.cells[3] == "O" && board.cells[4] == "O" && board.cells[5] == " "
        "6"
      elsif board.cells[3] == "O" && board.cells[5] == "O" && board.cells[4] == " "
        "5"
      elsif board.cells[3] == "O" && board.cells[6] == "O" && board.cells[0] == " "
        "1"
      elsif board.cells[5] == "O" && board.cells[4] == "O" && board.cells[3] == " "
        "4"
      elsif board.cells[5] == "O" && board.cells[8] == "O" && board.cells[2] == " "
        "3"
      elsif board.cells[6] == "O" && board.cells[4] == "O" && board.cells[2] == " "
        "3"
      elsif board.cells[6] == "O" && board.cells[7] == "O" && board.cells[8] == " "
        "9"
      elsif board.cells[6] == "O" && board.cells[3] == "O" && board.cells[0] == " "
        "1"
      elsif board.cells[6] == "O" && board.cells[0] == "O" && board.cells[3] == " "
        "4"
      elsif board.cells[6] == "O" && board.cells[8] == "O" && board.cells[7] == " "
        "8"
      elsif board.cells[7] == "O" && board.cells[4] == "O" && board.cells[1] == " "
        "2"
      elsif board.cells[7] == "O" && board.cells[1] == "O" && board.cells[4] == " "
        "5"
      elsif board.cells[8] == "O" && board.cells[4] == "O" && board.cells[0] == " "
        "1"
      elsif board.cells[8] == "O" && board.cells[7] == "O" && board.cells[6] == " "
        "7"
      elsif board.cells[0] == "X" && board.cells[1] == "X" && board.cells[2] == " "
        "3"
      elsif board.cells[0] == "X" && board.cells[2] == "X" && board.cells[1] == " "
        "2"
      elsif board.cells[0] == "X" && board.cells[3] == "X" && board.cells[6] == " "
        "7"
      elsif board.cells[0] == "X" && board.cells[4] == "X" && board.cells[8] == " "
        "9"
      elsif board.cells[0] == "X" && board.cells[6] == "X" && board.cells[3] == " "
        "4"
      elsif board.cells[0] == "X" && board.cells[8] == "X" && board.cells[4] == " "
        "5"
      elsif board.cells[1] == "X" && board.cells[2] == "X" && board.cells[0] == " "
        "1"
      elsif board.cells[1] == "X" && board.cells[4] == "X" && board.cells[7] == " "
        "8"
      elsif board.cells[1] == "X" && board.cells[7] == "X" && board.cells[4] == " "
        "5"
      elsif board.cells[2] == "X" && board.cells[4] == "X" && board.cells[6] == " "
        "7"
      elsif board.cells[2] == "X" && board.cells[5] == "X" && board.cells[8] == " "
        "9"
      elsif board.cells[2] == "X" && board.cells[6] == "X" && board.cells[4] == " "
        "5"
      elsif board.cells[2] == "X" && board.cells[8] == "X" && board.cells[5] == " "
        "6"
      elsif board.cells[3] == "X" && board.cells[4] == "X" && board.cells[5] == " "
        "6"
      elsif board.cells[3] == "X" && board.cells[5] == "X" && board.cells[4] == " "
        "5"
      elsif board.cells[3] == "X" && board.cells[6] == "X" && board.cells[0] == " "
        "1"
      elsif board.cells[5] == "X" && board.cells[4] == "X" && board.cells[3] == " "
        "4"
      elsif board.cells[5] == "X" && board.cells[8] == "X" && board.cells[2] == " "
        "3"
      elsif board.cells[6] == "X" && board.cells[4] == "X" && board.cells[2] == " "
        "3"
      elsif board.cells[6] == "X" && board.cells[7] == "X" && board.cells[8] == " "
        "9"
      elsif board.cells[6] == "X" && board.cells[3] == "X" && board.cells[0] == " "
        "1"
      elsif board.cells[6] == "X" && board.cells[0] == "X" && board.cells[3] == " "
        "4"
      elsif board.cells[6] == "X" && board.cells[8] == "X" && board.cells[7] == " "
        "8"
      elsif board.cells[7] == "X" && board.cells[4] == "X" && board.cells[1] == " "
        "2"
      elsif board.cells[7] == "X" && board.cells[1] == "X" && board.cells[4] == " "
        "5"
      elsif board.cells[8] == "X" && board.cells[4] == "X" && board.cells[0] == " "
        "1"
      elsif board.cells[8] == "X" && board.cells[7] == "X" && board.cells[6] == " "
        "7"
      else
        move = board.cells.index(" ")
        move += 1
        "#{move}"
      end
    end

    def random_corner_move
      ["1", "3", "7", "9"].sample
    end
  end
end
