class Corrector
  def correct_name (word)
    word.capitalize!
    word.slice(0..9) + "..."      
  end
end
