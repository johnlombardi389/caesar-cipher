def shift_letters(letter, number)
    if letter.match?(/[a-zA-Z]/) # check if letter is a letter and ignore special characters
        letter_num = letter.ord
        shifted_letter = letter_num + number

        if letter.upcase == letter && shifted_letter > 90
            shifted_letter > 90 ? (shifted_letter - 90 + 64).chr : shifted_letter.chr
        else
            shifted_letter > 122 ? (shifted_letter - 122 + 96).chr : shifted_letter.chr
        end
    else
        letter
    end
end

def caesar_cipher(string, number)
    letters = string.split("")

    mapped_letters = letters.map { |letter| shift_letters(letter, number) }

    mapped_letters.join("")
end