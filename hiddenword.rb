class HiddenWord
  attr_accessor :word, :guessed_letters
  def initialize(word)
    @word = word
    @guessed_letters = []
  end

  def display
    display_array = []
    for letter in @word.split('')
      if @guessed_letters.include?(letter)
        display_array.push(letter)
      else
        display_array.push('*')
      end
    end
    puts display_array.join('')
  return display_array.join('')
  end

  def check_letter(letter)
    if  @word.split('').include?(letter)
      @guessed_letters.push(letter)
      return true
    else
      return false
    end

end

end
