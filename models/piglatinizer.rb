
class PigLatinizer
    attr_reader :text

    def initialize(text)
        @text = text
    end

    def piglatinize
        piglatin_text = []
        words = text.split(" ")
        words.each do |w|
            if w.start_with?('a','e','i','o','u','A', 'E', 'I', 'O', 'U') && w.end_with?('w', 'W')
                piglatin_text << w + "ay"
            elsif w.start_with?('a','e','i','o','u','A', 'E', 'I', 'O', 'U') && w.end_with?('a','e','i','o','u','A', 'E', 'I', 'O', 'U')
                piglatin_text << w + "way"
            elsif w.start_with?('a','e','i','o','u','A', 'E', 'I', 'O', 'U') && !w.end_with?('a','e','i','o','u','A', 'E', 'I', 'O', 'U') && !w.end_with?('w', 'W')
                piglatin_text << w + "way"
         
            elsif w.start_with?('b', 'B', 'c', 'C', 'd', 'D', 'f', 'F', 'g', 'G', 'h', 'H', 'j', 'J', 'k', 'K', 'l', 'L', 'm', 'M', 'n', 'N', 'p', 'P', 'q', 'Q', 'r', 'R', 's', 'S', 't', 'T', 'v', 'V', 'w', 'W', 'x', 'X', 'y', 'Y', 'z', 'Z')
                letters_to_append = []
                w.chars.each_with_index do |c, i|
                        if c == "a" || c == "e" || c == "i" || c == "o" || c == "u" || c == "A" || c == "E" || c == "I" || c == "O" || c == "U"
                            break
                        else
                            w.slice!(i)
                            letters_to_append << c
                        end
                    end
                piglatin_text << w + letters_to_append.join("") + "ay"
            end
        end
        piglatin_text.join(" ")
    end



end