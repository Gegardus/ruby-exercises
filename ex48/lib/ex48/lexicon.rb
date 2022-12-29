class Lexicon  
  def Lexicon.scan(input)
    # Direction words: north, south, east, west, down, up, left, right, back  
    # Verbs: go, stop, kill, eat
    # Stop words: the, in, of, from, at, it
    # Nouns: door, bear, princess, cabinet
    # Numbers: any string of 0 through 9 characters
    words = input.split(" ")
    sequence = []
    
    words.each do |word| 
      case word
      when "north", "south", "east", "west", "down", "up", "left", "right", "back"
        sequence.push(['direction', word])
      when "go", "stop", "kill", "eat"
        sequence.push(['verb', word])
      when "the", "of", "in", "from", "at", "it"
        sequence.push(['stop', word])
      when "door", "bear", "princess", "cabinet"
        sequence.push(['noun', word])
      when %r{[0-9]}
        sequence.push(['number', word.to_i])
      else 
        sequence.push(['error', word])
      end
    end
    return sequence
  end
end

# %r{} is equivalent to the /.../ notation, but allows you 
# to have '/' in your regexp without having to escape them:
# %r{/home/user}, is equivalent to: /\/home\/user/

# stuff = $stdin.gets.chomp
# words = stuff.split

# first_word = ['verb', 'go']
# second_word = ['direction', 'north']
# third_word = ['direction', 'west']
# sentence = [first_word, second_word, third_word]
