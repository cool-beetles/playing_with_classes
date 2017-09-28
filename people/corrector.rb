class Corrector
  def correct_name(word, chars = 10)
    if word.length > chars
      word.capitalize.slice(0..9) + "..." 
    else 
      word.capitalize
    end    
  end
end
