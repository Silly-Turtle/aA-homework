class Stack
    def initialize (pile = [])
      @pile = pile
    end

    def push(el)
      pile << el
      el
    end

    def pop
      pile.pop
    end

    def peek
      pile.last
    end

    attr_reader :pile
  end
