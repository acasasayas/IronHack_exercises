def solve_cypher(input)
	code = -3
	cripted = input.split(' ')
	decripted = Array.new
	decripted_array = Array.new
	i=0
	j=0
	for word in cripted
		decript = word.split('')
		for letter in decript
			if letter.ord + code <= 0
				newcode = 122 - (letter.ord + code)
			elsif letter.ord + code > 122
				newcode = (letter.code + code) - 122
			else
				newcode = letter.ord + code
			end
			decripted[j] = newcode.chr
			j = j + 1
		end
		decripted_array[i] = decripted.join('')
		decripted = Array.new
		i = i + 1
		j=0
	end
	#puts decripted.join('')
	puts decripted_array.join(' ')
end
solve_cypher ("p| uhdo qdph lv grqdog gxfn")