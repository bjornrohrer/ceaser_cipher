class Ceaser
  @@UPPERCASE_LETTERS = ('A'..'Z').to_a
  @@LOWERCASE_LETTERS = ('a'..'z').to_a

  attr_accessor = :key

  def initialize(key)
    @key = key
  end

  def encrypt(text)
    encrypted = ''
    text.split('').each do |x|
      encrypted += if @@UPPERCASE_LETTERS.include? x
                     @@UPPERCASE_LETTERS [(@@UPPERCASE_LETTERS.index(x) + @key) % 26]
                   elsif @@LOWERCASE_LETTERS.include? x
                     @@LOWERCASE_LETTERS [(@@LOWERCASE_LETTERS.index(x) + @key) % 26]
                   else
                     x
                   end
    end
    encrypted
  end
end

cipher = Ceaser.new(5)
puts cipher.encrypt('fuck you')

