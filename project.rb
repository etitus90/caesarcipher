def caesar_cipher(string, shift)
    alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
    shifted_array = []
    cipher_string = ""
    split_string = string.downcase.split('')
    split_string.each do |letter|
        if (alphabet.index(letter))
            index = alphabet.find_index(letter)
            index += shift
            if (index > 25)
                index -= 26
            else
                index = index
            end
            shifted_array.push(alphabet[index])
        else
            shifted_array.push(letter)
        end
    end
    cipher_string = shifted_array.join("").capitalize
    puts cipher_string
end

caesar_cipher("What a string!", 5)