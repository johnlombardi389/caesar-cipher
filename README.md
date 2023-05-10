# Caesar Cipher

## Table of contents

- [Overview](#overview)
- [My process](#my-process)
  - [Tools](#tools)
  - [What I learned](#what-i-learned)
  - [Example Code](#example-code)
- [Author](#author)

## Overview

The caesar cipher is a simple encryption technique named after Julius Caesar who used it. It takes each letter and replaces it with a different letter a fixed number of positions down the alphabet. For example, "Hello, world" becomes "Ifmmp, xpsme" when we shift the letters 1 position down in the alphabet. This program does the encryption for you, taking a string and a number to change positions by.

---

## My process

### Tools

- Ruby
- VS Code
- Git

### What I learned

- How to convert letters to numbers
- Creating methods in Ruby that use parameters
- Mapping over an array in Ruby
- Using if...else statements to check conditions

### Code

The `shift_letters` method checks for letters, converts them to a number, and moves their position before changing them back into the new letter. While the `caesar_cipher` method takes your initial string and requested number, splitting the string into an array of letters, running it through the `shift_letters` method and then joining the letters back into your newly encrypted string

```ruby
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

puts caesar_cipher("Hello, world!?", 1)
# outputs: "Ifmmp, xpsme!?"
```

---

## Author

John Lombardi

- [Portfolio](https://johnlombardi389.github.io/portfolio/)
- [LinkedIn](https://www.linkedin.com/in/johnlombardi389/)
- [GitHub](https://github.com/johnlombardi389)
