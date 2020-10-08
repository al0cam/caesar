# frozen_string_literal: true

def letter_bidnis(letter, shift)
  letter = letter.ord + shift
  if letter > 90 && letter < 97
    letter = 64 + (letter - 90) if shift.postive?
    letter = 123 - (97 - letter) unless shift.postive?
  elsif letter < 65
    letter = 91 - (65 - letter)
  elsif letter > 122
    letter = 96 + (122 - letter)
  end
  letter.chr
end

def warp(word, shift)
  word = word.split('').map { |letter| letter_bidnis(letter, shift) }
  word.join
end

def caesar(sentance, shift)
  sentance = sentance.split(' ')
  sentance.map! { |word| warp(word, shift) }
  sentance.join(' ')
end

puts caesar('A o o', -1)
