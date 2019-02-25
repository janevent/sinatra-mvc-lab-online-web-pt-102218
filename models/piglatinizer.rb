require 'pry'
class PigLatinizer 
  
  attr_reader :phrase
  
  # def splits
  #   phrase.split(" ")
  # end
  
  def piglatinize(phrase)
    array = phrase.split(" ")
    array.map do |word|
      letters = word.split("")
      #binding.pry
      if !letters.first.scan(/[bcdfghjklmnpqrstvwxyz]/).empty? && !letters[1].scan(/[bcdfghjklmnpqrstvwxyz]/).empty? && !letters[2].scan(/[bcdfghjklmnpqrstvwxyz]/).empty? 
        #binding.pry
        c = letters.shift 
        letters << c
        d = letters.shift 
        letters << d
        e = letters.shift 
        letters << e
        letters << "ay"
        letters.join
       elsif  
      elsif !letters.first.scan(/[bcdfghjklmnpqrstvwxyz]/).empty? 
        c = letters.shift 
        letters << c
        letters << "ay"
        letters.join
      else
        letters << "way"
        letters.join
      end
    end.join(" ")
  end
  
end