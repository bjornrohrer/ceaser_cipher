class Ceaser
  @@UPPERCASE_LETTERS = ('A'..'Z').to_a # Creates an array of letters from A to Z in uppercase.
  @@LOWERCASE_LETTERS = ('a'..'z').to_a # Creates an array of letters from A to Z in lowercase.

  attr_accessor = :key # Gets and sets the key without using methods.

  def initialize(key)
    # Constructor recevies the key upon initailization.
    @key = key # Made the key accesible within a variable.
  end

  def encrypt(text)
    encrypted = '' # Variable that holds the encrypted text.
    text.split('').each do |x| # splits the given text into an array and iterates over each index inside the array.
      encrypted += if @@UPPERCASE_LETTERS.include? x # Checks if any uppercase letter is included in the variable.
                     @@UPPERCASE_LETTERS [(@@UPPERCASE_LETTERS.index(x) + @key) % 26] # Finds the index of the variable,
                     # and adds the key to it.
                   elsif @@LOWERCASE_LETTERS.include? x
                     @@LOWERCASE_LETTERS [(@@LOWERCASE_LETTERS.index(x) + @key) % 26] # Finds the index of the variable,
                     # and adds the key to it
                   else
                     x
                   end
    end
    encrypted # Returns the enctrypted text.
  end
end

cipher = Ceaser.new(5) # Calls the method
puts cipher.encrypt('Hello World')
