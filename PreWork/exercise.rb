puts "What is the name source?"
source = gets.chomp
puts "How do you want to name the file?"
name_file = gets.chomp
source_content = IO.read(source)
IO.write(name_file,source_content)
