word_list = []

puts "Enter any word"
word = gets.chomp.downcase
word_list.push word

while word != ""
	puts "Add another word. Or press Enter to sort your words."
	word = gets.chomp.downcase
	word_list.push word
end

puts word_list.sort