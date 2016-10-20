puts "Write a phrase."
phrase = gets.chomp
sort = phrase.split(' ')
words = Array.new
for word in sort
	words.push word.gsub(/[[:punct:]]/, '')
	
end
words.sort!
puts words.to_s