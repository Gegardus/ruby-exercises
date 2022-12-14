class ParserError < Exception
end

class Sentence
  # Direction words: north, south, east, west, down, up, left, right, back  
  # Verbs: go, stop, kill, eat
  # Stop words: the, in, of, from, at, it
  # Nouns: door, bear, princess, cabinet
  # Numbers: any string of 0 through 9 characters    

  def initialize(subject, verb, obj)
      # remember we take ['noun','princess'] pairs and convert them
      @subject = subject[1]
      @verb = verb[1]
      @object = obj[1]
  end

  attr_reader :subject
  attr_reader :verb
  attr_reader :object
end
  # ======= Basic set of parsing functions  =========

  # To make decisions about what kind of sentence we're dealing with based on what the next word is.
  def peek(word_list)
    if word_list
        word = word_list[0]
        return word[0]
    else
        return nil
    end
  end

  # To consume a word we use the match, which confirms that the expected word is the right type, 
  # takes it off the list, and returns the word, to decide what kind of sentence we're dealing with
  def match(word_list, expecting)
    if word_list
      word = word_list.shift  
      if word[0] == expecting
        return word
      else
        return nil
      end
    else
      return nil
    end
  end
  
  # To skip words that aren't useful to the Sentence
  def skip(word_list, word_type)
    while peek(word_list) == word_type
      match(word_list, word_type)
    end
  end

  # =========== Parsing =============

  def parse_verb(word_list)
    skip(word_list, 'stop')
    if peek(word_list) == 'verb'
      return match(word_list, 'verb')
    else
      raise ParserError.new("Expected a verb next.")
    end
  end

  def parse_object(word_list)
    skip(word_list, 'stop')
    next_word = peek(word_list)
    if next_word == 'noun'
      return match(word_list, 'noun')
    elsif next_word == 'direction'
      return match(word_list, 'direction')
    else
      raise ParserError.new("Expected a noun or direction next.")
    end
  end

  def parse_subject(word_list)
    skip(word_list, 'stop')
    next_word = peek(word_list)
    if next_word == 'noun'
      return match(word_list, 'noun')
    elsif next_word == 'verb'
      return ['noun', 'player']
    else
      raise ParserError.new("Expected a verb next.")
    end
  end

  def parse_sentence(word_list)
    subj = parse_subject(word_list)
    verb = parse_verb(word_list)
    obj = parse_object(word_list)
    return Sentence.new(subj, verb, obj)
  end

  # require './lib/ex48/parser.rb'
